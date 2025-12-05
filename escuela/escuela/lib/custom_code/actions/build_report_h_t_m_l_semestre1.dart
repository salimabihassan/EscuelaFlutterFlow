// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/custom_code/actions/index.dart';
import '/flutter_flow/custom_functions.dart';

String buildReportHTMLSemestre1(
  String? rutAlumno,
  String? nombreAlumno,
  String? grado,
  String? seccion,
  String? periodo,
  List<NotasRecord>? notasDocs,
  List<AsignaturaRecord>? asignaturasRef,
  double? asistencia,
  String? observaciones,
  double? promedioSem1,
) {
  // Crear mapa de nombres de asignaturas por código
  final Map<int, String> nombresAsignaturas = {};
  for (var asig in asignaturasRef ?? []) {
    nombresAsignaturas[asig.codAsig ?? 0] = asig.nomAsig ?? '';
  }

  // Parsear asignaturas directamente desde los documentos
  final asignaturas = (notasDocs ?? []).map((doc) {
    final codAsig = doc.codAsig ?? 0;
    return {
      'codigo': codAsig.toString(),
      'nombre': nombresAsignaturas[codAsig] ?? 'Asignatura $codAsig',
      'notas': [
        doc.nota1 ?? '',
        doc.nota2 ?? '',
        doc.nota3 ?? '',
        doc.nota4 ?? '',
        doc.nota5 ?? '',
        doc.nota6 ?? '',
        doc.nota7 ?? '',
        doc.nota8 ?? '',
        doc.nota9 ?? '',
        doc.nota10 ?? '',
      ],
      'promAsig': doc.notaPromedio ?? 0.0,
    };
  }).toList();

  // Función para formatear nota
  String fmt(dynamic v) {
    if (v == null || v == 0 || v == 0.0) return '';
    if (v is num) return v.toStringAsFixed(1);
    return v.toString();
  }

  // Función para convertir nota numérica a literal
  String toLetterGrade(dynamic v) {
    if (v == null || v == 0 || v == 0.0) return '';
    double nota = v is num ? v.toDouble() : double.tryParse(v.toString()) ?? 0;
    if (nota >= 6.0) return 'MB';
    if (nota >= 5.0) return 'B';
    if (nota >= 4.0) return 'S';
    if (nota >= 1.0) return 'I';
    return '';
  }

  // Obtener fecha en letra
  final now = DateTime.now();
  final dias = [
    'Domingo',
    'Lunes',
    'Martes',
    'Miércoles',
    'Jueves',
    'Viernes',
    'Sábado',
  ];
  final meses = [
    'enero',
    'febrero',
    'marzo',
    'abril',
    'mayo',
    'junio',
    'julio',
    'agosto',
    'septiembre',
    'octubre',
    'noviembre',
    'diciembre',
  ];
  final fechaLetra =
      '${dias[now.weekday % 7]}, ${now.day} de ${meses[now.month - 1]} del ${now.year}';

  // Construir filas de tabla solo con 1er semestre
  String tablaRows = '';
  for (var i = 0; i < asignaturas.length; i++) {
    final asig = asignaturas[i];
    final codigo = asig['codigo']?.toString() ?? '';
    final nombre = asig['nombre']?.toString() ?? '';
    final notas1 = asig['notas'] as List? ?? [];
    final prom1 = asig['promAsig'] ?? 0;

    // Verificar si es Religión
    final esReligion = nombre.toUpperCase().contains('RELIGIÓN') ||
        nombre.toUpperCase().contains('RELIGION');

    tablaRows += '<tr>';
    tablaRows += '<td>${i + 1}</td>';
    tablaRows += '<td align="left">$codigo.- $nombre</td>';

    // 10 notas 1er semestre
    for (var j = 0; j < 10; j++) {
      tablaRows += '<td>${j < notas1.length ? fmt(notas1[j]) : ''}</td>';
    }
    tablaRows +=
        '<td><strong>${esReligion ? toLetterGrade(prom1) : fmt(prom1)}</strong></td>';
    tablaRows += '</tr>';
  }

  // Convertir grado a texto
  final gradosMap = {
    '1': '1ro',
    '2': '2do',
    '3': '3ro',
    '4': '4to',
    '5': '5to',
    '6': '6to',
    '7': '7mo',
    '8': '8vo',
  };
  final gradoTexto = gradosMap[grado] ?? grado;

  return '''
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8" />
<title>INFORME DE NOTAS PRIMER SEMESTRE</title>
<style>
@page { margin: 2cm 2cm 2cm 2cm; }
body { font-family: 'Segoe UI', Arial, Helvetica, sans-serif; font-size: 8px; background: #fff; margin: 0; padding: 0; }
.caja { background-color: #e3eafc; padding: 10px 14px; border-radius: 7px; margin-bottom: 10px; box-shadow: 0 2px 8px rgba(0,0,0,0.07); max-width: 100%; }
table { border-collapse: collapse; border-spacing: 0; margin-bottom: 18px; width: 85%; background: #fff; border-radius: 7px; box-shadow: 0 1px 4px rgba(0,0,0,0.04); }
th, td { border: 1px solid #cfd8dc; padding: 3px 2px; text-align: center; font-size: 7.5px; }
th { background: #e9f0fb; font-weight: 600; }
tr:nth-child(even) td { background: #fff; }
.titulo { font-size: 15px; color: #00366C; font-weight: bold; margin-bottom: 5px; }
.leyenda { background: #e3eafc; border-radius: 5px; padding: 5px; margin-bottom: 8px; font-size: 7.5px; }
@media print { body { background: #fff; } table { box-shadow: none; } }
</style>
</head>
<body>
<center>
<div class="caja">
    <div style="text-align:center;">
        <div class="titulo">Escuela Básica</div>
        <div><strong>Colegio " "</strong></div>
        <div>Fono: xxx xxx xxx &nbsp; | &nbsp; colegio@gmail.com</div>
        <div>RBD: xxxx-x</div>
        <div style="margin-top:8px; font-size:8px; color:#555;">Fecha de emisión: $fechaLetra</div>
    </div>
    <div style="clear:both;"></div>
</div>

<table>
    <tr>
        <td colspan="5" class="titulo" style="background:#e3eafc;">INFORME DE NOTAS PRIMER SEMESTRE</td>
    </tr>
    <tr>
        <td colspan="5" style="background:#f5f8fd;"><strong>DATOS DEL ALUMNO</strong></td>
    </tr>
    <tr>
        <td><strong>Cédula:</strong> ${rutAlumno ?? ''}</td>
        <td><strong>Nombre:</strong> ${nombreAlumno ?? ''}</td>
        <td><strong>Curso:</strong> $gradoTexto</td>
        <td><strong>Sección:</strong> ${seccion ?? ''}</td>
        <td><strong>Periodo:</strong> ${periodo ?? ''}</td>
    </tr>
</table>

<table>
    <tr>
        <th rowspan="2">Nro.</th>
        <th rowspan="2" style="text-align: left;">Asignatura</th>
        <th colspan="11">Notas Primer Semestre</th>
    </tr>
    <tr>
        <th>1</th><th>2</th><th>3</th><th>4</th><th>5</th><th>6</th><th>7</th><th>8</th><th>9</th><th>10</th><th>Promedio</th>
    </tr>
    $tablaRows
    <tr>
        <td colspan="2"></td>
        <td colspan="10" align="right" style="background:#e3eafc; font-size: 12px;"><strong>Promedio 1er Semestre</strong></td>
        <td style="background:#ccffff; font-size: 12px;"><strong>${fmt(promedioSem1)}</strong></td>
    </tr>
    <tr>
        <td colspan="2" style="background:#e3eafc;"><strong>Asistencia</strong></td>
        <td colspan="11" align="left"><strong>Porcentaje de Asistencia:</strong> ${asistencia?.toStringAsFixed(0) ?? '0'}%</td>
    </tr>
    <tr>
        <td colspan="13" align="left" style="background:#f5f8fd;"><strong>Observaciones:</strong> ${observaciones ?? ''}</td>
    </tr>
</table>

<div class="leyenda">
    <strong>LEYENDA DE CALIFICACIONES:</strong>
    &nbsp; I: Insuficiente (1.0 - 3.9) &nbsp; | &nbsp;
    S: Suficiente (4.0 - 4.9) &nbsp; | &nbsp;
    B: Bueno (5.0 - 5.9) &nbsp; | &nbsp;
    MB: Muy Bueno (6.0 - 7.0)
</div>

</center>
</body>
</html>
  ''';
}
