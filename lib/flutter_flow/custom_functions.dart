import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

/// validar Rut chileno
bool validateRut(String rut) {
  rut = rut.toUpperCase().replaceAll('.', '').replaceAll('-', '');

  if (rut.length < 2) return false;

  String dv = rut.substring(rut.length - 1);
  String number = rut.substring(0, rut.length - 1);

  int suma = 0;
  int factor = 2;

  for (int i = number.length - 1; i >= 0; i--) {
    suma += int.parse(number[i]) * factor;
    factor = factor == 7 ? 2 : factor + 1;
  }

  int mod = 11 - (suma % 11);
  String dvCalc = (mod == 11)
      ? '0'
      : (mod == 10)
          ? 'K'
          : mod.toString();

  return dv == dvCalc;
}

double promedioNormalizado10(
  String? s1,
  String? s2,
  String? s3,
  String? s4,
  String? s5,
  String? s6,
  String? s7,
  String? s8,
  String? s9,
  String? s10,
) {
  double? parseAndNormalize(String? s) {
    if (s == null) return null;
    final t = s.trim();
    if (t.isEmpty) return null; // si está vacío, devuelve null (no 0)

    final v = double.tryParse(t.replaceAll(',', '.'));
    if (v == null) return null;

    // Reglas de normalización
    if (v > 7 && v < 10) return 0.0;
    if (v >= 10 && v <= 70) return v / 10.0;
    if (v > 70) return 0.0;
    return v; // 0..7 se mantiene
  }

  final notas = <double?>[
    parseAndNormalize(s1),
    parseAndNormalize(s2),
    parseAndNormalize(s3),
    parseAndNormalize(s4),
    parseAndNormalize(s5),
    parseAndNormalize(s6),
    parseAndNormalize(s7),
    parseAndNormalize(s8),
    parseAndNormalize(s9),
    parseAndNormalize(s10),
  ];

  double sum = 0.0;
  int count = 0;
  for (final n in notas) {
    if (n != null) {
      sum += n;
      count++;
    }
  }

  final promedio = count == 0 ? 0.0 : sum / count;

  // 🔥 Redondear a 2 decimales
  return double.parse(promedio.toStringAsFixed(2));
}

String normalizaNotaRespetandoVacio(String? s) {
  /// Si está vacío o null, devolver vacío (no 0)
  if (s == null) return '';
  final t = s.trim();
  if (t.isEmpty) return '';

  // Intentar parsear (soporta coma decimal)
  final v = double.tryParse(t.replaceAll(',', '.'));
  if (v == null) return t; // si no es número, deja el texto tal cual

  // Reglas:
  if (v > 7 && v < 10) return '0';
  if (v >= 10 && v <= 70) return (v / 10).toString();
  if (v > 70) return '0';
  return v.toString(); // (0..7) se mantiene
}

String? formatRUT(String rutRaw) {
  // Si está vacío, retorna vacío
  if (rutRaw.isEmpty) return '';

  // Eliminar puntos y guiones, pero mantener números y 'k'/'K'
  rutRaw = rutRaw.replaceAll(RegExp(r'[.-]'), '');

  // Extraer solo los dígitos y permitir una 'k' al final
  String cleaned = '';
  String dv = '';

  // Recorremos de derecha a izquierda para identificar el DV
  List<String> chars = rutRaw.split('').reversed.toList();

  if (chars.isNotEmpty) {
    dv = chars[0].toLowerCase() == 'k'
        ? chars[0].toUpperCase()
        : chars[0]; // K mayúscula
    String bodyDigits = rutRaw
        .substring(0, rutRaw.length - 1)
        .replaceAll(RegExp(r'\D'), ''); // solo números
    String body = bodyDigits;

    // Formatear el cuerpo con puntos
    String formattedBody = '';
    for (int i = 0; i < body.length; i++) {
      if (i > 0 && (body.length - i) % 3 == 0) {
        formattedBody += '.';
      }
      formattedBody += body[i];
    }

    // Devolver RUT formateado
    return '$formattedBody-$dv';
  }
}

String gradoTexto(int grado) {
  const grados = {
    1: '1ro Básico',
    2: '2do Básico',
    3: '3ro Básico',
    4: '4to Básico',
    5: '5to Básico',
    6: '6to Básico',
    7: '7mo Básico',
    8: '8vo Básico',
    9: '1ro Medio',
    10: '2do Medio',
    11: '3ro Medio',
    12: '4to Medio',
  };

  return grados[grado] ?? 'Grado desconocido';
}

double calcularPromedio(List<double> notas) {
  if (notas.isEmpty) return 0;
  final suma = notas.reduce((a, b) => a + b);
  return suma / notas.length;
}

String notaToJson(
  int codAsig,
  String nombre,
  String nota1,
  String nota2,
  String nota3,
  String nota4,
  String nota5,
  String nota6,
  String nota7,
  String nota8,
  String nota9,
  String nota10,
  double? promFinal,
  double promAsig,
) {
  final notas = [
    double.tryParse(nota1) ?? 0.0,
    double.tryParse(nota2) ?? 0.0,
    double.tryParse(nota3) ?? 0.0,
    double.tryParse(nota4) ?? 0.0,
    double.tryParse(nota5) ?? 0.0,
    double.tryParse(nota6) ?? 0.0,
    double.tryParse(nota7) ?? 0.0,
    double.tryParse(nota8) ?? 0.0,
    double.tryParse(nota9) ?? 0.0,
    double.tryParse(nota10) ?? 0.0,
  ];

  final map = {
    "codigo": codAsig,
    "nombre": nombre,
    "notas": notas,
    "prom_final": promFinal, // 👈 agregado
    "promAsig": promAsig,
  };

  return json.encode(map);
}

List<String>? prepararAsignaturas(
  List<String>? notas1Sem,
  List<String>? notas2Sem,
) {
  final List<String> resultado = [];

  final length = math.min(notas1Sem?.length ?? 0, notas2Sem?.length ?? 0);

  for (int i = 0; i < length; i++) {
    final sem1 = jsonDecode(notas1Sem![i]);
    final sem2 = jsonDecode(notas2Sem![i]);

    final map = {
      "codigo": sem1['codigo'],
      "nombre": sem1['nombre'],
      "notas1": sem1['notas'],
      "prom1": sem1['promAsig'],
      "notas2": sem2['notas'],
      "prom2": sem2['promAsig'],
      "prom_final": sem2['prom_final'], // tomado directo del semestre 2
    };

    resultado.add(jsonEncode(map));
  }

  return resultado;
}
