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

String buildReportHTML(
  String? rutAlumno,
  String? nombreAlumno,
  String? grado,
  String? seccion,
  String? periodo,
  List<NotasRecord>? notasSem1Docs,
  List<NotasRecord>? notasSem2Docs,
  List<AsignaturaRecord>? asignaturasRef,
  double? asistencia,
  String? observaciones,
  double? promedioSem1,
  double? promedioSem2,
  double? promedioFinal,
  int? negativas,
  int? positivas,
) {
  // Crear mapa de nombres de asignaturas por código
  final Map<int, String> nombresAsignaturas = {};
  for (var asig in asignaturasRef ?? []) {
    nombresAsignaturas[asig.codAsig ?? 0] = asig.nomAsig ?? '';
  }

  // Crear mapas de notas por código de asignatura
  final Map<int, Map<String, dynamic>> notasSem1Map = {};
  for (var doc in notasSem1Docs ?? []) {
    final codAsig = doc.codAsig ?? 0;
    notasSem1Map[codAsig] = {
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
      'promedio': doc.notaPromedio ?? 0.0,
    };
  }

  final Map<int, Map<String, dynamic>> notasSem2Map = {};
  for (var doc in notasSem2Docs ?? []) {
    final codAsig = doc.codAsig ?? 0;
    notasSem2Map[codAsig] = {
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
      'promedio': doc.notaPromedio ?? 0.0,
    };
  }

  // Combinar datos de ambos semestres
  final Set<int> todosLosCodigos = {...notasSem1Map.keys, ...notasSem2Map.keys};
  final asignaturas = todosLosCodigos.map((codAsig) {
    final sem1 = notasSem1Map[codAsig];
    final sem2 = notasSem2Map[codAsig];

    return {
      'codigo': codAsig.toString(),
      'nombre': nombresAsignaturas[codAsig] ?? 'Asignatura $codAsig',
      'notas1': sem1?['notas'] ?? List.filled(10, ''),
      'notas2': sem2?['notas'] ?? List.filled(10, ''),
      'prom1': sem1?['promedio'] ?? 0.0,
      'prom2': sem2?['promedio'] ?? 0.0,
      'prom_final':
          ((sem1?['promedio'] ?? 0.0) + (sem2?['promedio'] ?? 0.0)) / 2,
    };
  }).toList()
    ..sort(
      (a, b) => int.parse(
        a['codigo'].toString(),
      ).compareTo(int.parse(b['codigo'].toString())),
    );

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

  // Construir filas de tabla combinando 1er y 2do semestre
  String tablaRows = '';
  for (var i = 0; i < asignaturas.length; i++) {
    final asig = asignaturas[i];
    final codigo = asig['codigo']?.toString() ?? '';
    final nombre = asig['nombre']?.toString() ?? '';
    final notas1 = asig['notas1'] as List? ?? [];
    final notas2 = asig['notas2'] as List? ?? [];
    final prom1 = asig['prom1'] ?? 0;
    final prom2 = asig['prom2'] ?? 0;
    final promFinal = asig['prom_final'] ?? 0;

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
    tablaRows += '<td class="separador"></td>'; // Columna separadora sin bordes

    // 10 notas 2do semestre
    for (var j = 0; j < 10; j++) {
      tablaRows += '<td>${j < notas2.length ? fmt(notas2[j]) : ''}</td>';
    }
    tablaRows +=
        '<td><strong>${esReligion ? toLetterGrade(prom2) : fmt(prom2)}</strong></td>';
    tablaRows +=
        '<td><strong>${esReligion ? '' : fmt(promFinal)}</strong></td>';
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
<title>INFORME DE NOTAS FINAL</title>
<style>
@page { margin: 2cm 2cm 2cm 2cm; }
body { font-family: 'Segoe UI', Arial, Helvetica, sans-serif; font-size: 9px; background: #fff; margin: 0; padding: 0; }
.caja { background-color: #e3eafc; padding: 13.5px 18px; border-radius: 9px; margin-bottom: 13.5px; box-shadow: 0 2px 8px rgba(0,0,0,0.07); width: 783px; }
table { border-collapse: separate; border-spacing: 0; margin-bottom: 21.6px; width: 98%; background: #fff; border-radius: 7.2px; box-shadow: 0 1px 4px rgba(0,0,0,0.04); }
th, td { border: 1px solid #cfd8dc; padding: 5.4px 4.5px; text-align: center; width: auto; font-size: 9px; }
th { background: #e9f0fb; font-weight: 600; }
tr:nth-child(even) td { background: #f5f8fd; }
.separador { border: none !important; background: #fff !important; }
.titulo { font-size: 16.2px; color: #00366C; font-weight: bold; margin-bottom: 7.2px; }
.leyenda { background: #e3eafc; border-radius: 6.3px; padding: 6.3px; margin-bottom: 9px; font-size: 8.1px; }
.firmas th { border: none; background: none; padding-top: 18px; font-size: 9.9px; }
.firmas .linea { border-top: 1px solid #00366C; width: 168.3px; margin: 0 auto 4.5px auto; }
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
        <div style="margin-top:7.2px; font-size:9.9px; color:#555;">Fecha de emisión: $fechaLetra</div>
    </div>
    <div style="clear:both;"></div>
</div>

<table>
    <tr>
        <td colspan="5" class="titulo" style="background:#e3eafc;">INFORME DE NOTAS FINAL</td>
    </tr>
    <tr>
        <td colspan="5" style="background:#f5f8fd;"><strong>DATOS DEL ALUMNO</strong></td>
    </tr>
    <tr>
        <td><strong>Cédula:</strong> ${rutAlumno ?? ''}</td>
        <td><strong>Nombre:</strong> ${nombreAlumno ?? ''}</td>
        <td><strong>Curso:</strong> $gradoTexto</td>
        <td><strong>Sección:</strong> ${seccion ?? ''}</td>
        <td><strong>Periodo Escolar:</strong> ${periodo ?? ''}</td>
    </tr>
</table>

<table>
    <tr>
        <th rowspan="2">Nro.</th>
        <th rowspan="2" style="text-align: left;">Asignatura</th>
        <th colspan="11">Notas 1er Semestre</th>
        <th rowspan="2" class="separador"></th>
        <th colspan="11">Notas 2do Semestre</th>
        <th rowspan="2">Prom Final</th>
    </tr>
    <tr>
        <th>1</th><th>2</th><th>3</th><th>4</th><th>5</th><th>6</th><th>7</th><th>8</th><th>9</th><th>10</th><th>Prom</th>
        <th>1</th><th>2</th><th>3</th><th>4</th><th>5</th><th>6</th><th>7</th><th>8</th><th>9</th><th>10</th><th>Prom</th>
    </tr>
    $tablaRows
    <tr>
        <td colspan="2"></td>
        <td colspan="10" align="right" style="background:#e3eafc;"><strong>Promedio 1er Semestre</strong></td>
        <td style="background:#ccffff;"><strong>${fmt(promedioSem1)}</strong></td>
        <td class="separador"></td>
        <td colspan="10" align="right" style="background:#e3eafc;"><strong>Promedio 2do Semestre</strong></td>
        <td style="background:#ccffff;"><strong>${fmt(promedioSem2)}</strong></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="2" style="background:#e3eafc;"><strong>Anotaciones</strong></td>
        <td colspan="2" align="left"><strong>Negativas:</strong> ${negativas ?? 0}</td>
        <td colspan="2" align="left"><strong>Positivas:</strong> ${positivas ?? 0}</td>
        <td colspan="6" align="left"><strong>Asistencia:</strong> ${asistencia?.toStringAsFixed(0) ?? '0'}%</td>
        <td class="separador"></td>
        <td colspan="10" align="right" style="background:#e3eafc; font-size: 10.8px;"><strong>Promedio General</strong></td>
        <td style="background:#ccffff; font-size: 10.8px;"><strong>${fmt(promedioFinal)}</strong></td>
        <td></td>
    </tr>
    <tr>
        <td colspan="30" align="left" style="background:#f5f8fd;"><strong>Observaciones:</strong> ${observaciones ?? ''}</td>
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
