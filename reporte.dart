// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:pdf/widgets.dart' as pw;
import 'package:pdf/pdf.dart' show PdfColor, PdfPageFormat;
import 'dart:convert';
import 'package:intl/intl.dart';

String clasificarPromedio(double promedio) {
  if (promedio >= 6.0) return 'MB';
  if (promedio >= 5.0) return 'B';
  if (promedio >= 4.0) return 'S';
  if (promedio >= 1.0) return 'I';
  return '';
}

Future<FFUploadedFile> generateFinalStudentReportPDF(
  String? rutAlumno,
  String? nombreAlumno,
  String? grado,
  String? seccion,
  String? periodo,
  List<String>? asignaturaRaw,
  double? asistencia,
  String? observaciones,
  double? promedioSem1,
  double? promedioSem2,
  double? promedioFinal,
) async {
  try {
    final pdf = pw.Document();

    // Función helper para asegurar 10 notas
    List<double> ensureTenNotes(dynamic notas) {
      final list = List<double>.from(
        (notas ?? []).map((n) => (n as num).toDouble()),
      );
      while (list.length < 10) {
        list.add(0.0);
      }
      if (list.length > 10) {
        return list.sublist(0, 10);
      }
      return list;
    }

    final asignaturas =
        (asignaturaRaw ?? []).map((raw) {
          final m = jsonDecode(raw) as Map<String, dynamic>;
          return {
            'codigo': m['codigo']?.toString() ?? '',
            'nombre': m['nombre'] ?? '',
            'notas1': ensureTenNotes(m['notas1']),
            'prom1': (m['prom1'] ?? 0.0).toDouble(),
            'notas2': ensureTenNotes(m['notas2']),
            'prom2': (m['prom2'] ?? 0.0).toDouble(),
            'prom_final': (m['prom_final'] ?? 0.0).toDouble(),
          };
        }).toList();

    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4.landscape,
        margin: pw.EdgeInsets.all(8),
        build:
            (context) => pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              mainAxisSize: pw.MainAxisSize.min,
              children: [
                // Título principal
                pw.Text(
                  'Ingrese los Datos del Alumno',
                  style: pw.TextStyle(
                    fontSize: 10,
                    fontWeight: pw.FontWeight.bold,
                  ),
                ),
                pw.SizedBox(height: 3),
                // Sección de datos del alumno en formato horizontal
                pw.Row(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Expanded(
                      flex: 2,
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text('N° Rut', style: pw.TextStyle(fontSize: 7)),
                          pw.Container(
                            padding: pw.EdgeInsets.all(2),
                            decoration: pw.BoxDecoration(
                              border: pw.Border.all(
                                color: PdfColor.fromInt(0xFFCCCCCC),
                              ),
                              borderRadius: pw.BorderRadius.circular(4),
                            ),
                            child: pw.Text(
                              rutAlumno ?? '',
                              style: pw.TextStyle(fontSize: 9),
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(width: 10),
                    pw.Expanded(
                      flex: 3,
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text(
                            'Nombre Alumno',
                            style: pw.TextStyle(fontSize: 7),
                          ),
                          pw.Container(
                            padding: pw.EdgeInsets.all(2),
                            decoration: pw.BoxDecoration(
                              border: pw.Border.all(
                                color: PdfColor.fromInt(0xFFCCCCCC),
                              ),
                              borderRadius: pw.BorderRadius.circular(4),
                            ),
                            child: pw.Text(
                              nombreAlumno ?? '',
                              style: pw.TextStyle(fontSize: 9),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                pw.SizedBox(height: 3),
                pw.Row(
                  children: [
                    pw.Expanded(
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text('Grado', style: pw.TextStyle(fontSize: 7)),
                          pw.Container(
                            padding: pw.EdgeInsets.all(2),
                            decoration: pw.BoxDecoration(
                              border: pw.Border.all(
                                color: PdfColor.fromInt(0xFFCCCCCC),
                              ),
                              borderRadius: pw.BorderRadius.circular(4),
                            ),
                            child: pw.Text(
                              grado ?? '',
                              style: pw.TextStyle(fontSize: 9),
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(width: 10),
                    pw.Expanded(
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text('Sección', style: pw.TextStyle(fontSize: 7)),
                          pw.Container(
                            padding: pw.EdgeInsets.all(2),
                            decoration: pw.BoxDecoration(
                              border: pw.Border.all(
                                color: PdfColor.fromInt(0xFFCCCCCC),
                              ),
                              borderRadius: pw.BorderRadius.circular(4),
                            ),
                            child: pw.Text(
                              seccion ?? '',
                              style: pw.TextStyle(fontSize: 9),
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(width: 10),
                    pw.Expanded(
                      child: pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Text('Periodo', style: pw.TextStyle(fontSize: 7)),
                          pw.Container(
                            padding: pw.EdgeInsets.all(2),
                            decoration: pw.BoxDecoration(
                              border: pw.Border.all(
                                color: PdfColor.fromInt(0xFFCCCCCC),
                              ),
                              borderRadius: pw.BorderRadius.circular(4),
                            ),
                            child: pw.Text(
                              periodo ?? '',
                              style: pw.TextStyle(fontSize: 9),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                pw.SizedBox(height: 4),
                // Título de la sección
                pw.Center(
                  child: pw.Text(
                    'Notas por Asignatura',
                    style: pw.TextStyle(
                      fontSize: 9,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                ),
                pw.SizedBox(height: 3),
                // TABLA 1: PRIMER SEMESTRE
                pw.Row(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    // Tabla de Primer Semestre
                    pw.Expanded(
                      child: pw.Table(
                        columnWidths: {
                          0: pw.FlexColumnWidth(5), // Asignatura
                          for (var i = 1; i <= 10; i++)
                            i: pw.FlexColumnWidth(1), // notas 1-10
                          11: pw.FlexColumnWidth(1.5), // promedio
                        },
                        border: pw.TableBorder.all(width: 0.5),
                        children: [
                          // Fila 1: Encabezado "Notas 1er Semestre" unificado
                          pw.TableRow(
                            decoration: pw.BoxDecoration(
                              color: PdfColor.fromInt(0xFFE8E8E8),
                            ),
                            children: [
                              pw.Container(
                                padding: const pw.EdgeInsets.all(2),
                                alignment: pw.Alignment.center,
                                child: pw.Text(
                                  'Asignatura',
                                  style: pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: 7,
                                  ),
                                ),
                              ),
                              pw.Container(
                                padding: const pw.EdgeInsets.all(2),
                                alignment: pw.Alignment.center,
                                child: pw.Text(
                                  'Notas 1er Semestre',
                                  style: pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: 7,
                                  ),
                                ),
                              ),
                              for (var i = 2; i <= 10; i++) pw.Container(),
                              pw.Container(
                                padding: const pw.EdgeInsets.all(2),
                                alignment: pw.Alignment.center,
                                child: pw.Text(
                                  'Promedio',
                                  style: pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: 7,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Fila 2: Números 1-10
                          pw.TableRow(
                            decoration: pw.BoxDecoration(
                              color: PdfColor.fromInt(0xFFF5F5F5),
                            ),
                            children: [
                              pw.Container(),
                              ...List.generate(
                                10,
                                (i) => pw.Container(
                                  padding: const pw.EdgeInsets.all(2),
                                  alignment: pw.Alignment.center,
                                  child: pw.Text(
                                    '${i + 1}',
                                    style: pw.TextStyle(
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 7,
                                    ),
                                  ),
                                ),
                              ),
                              pw.Container(),
                            ],
                          ),
                          // Filas de asignaturas
                          ...asignaturas.asMap().entries.map((entry) {
                            final idx = entry.key;
                            final asig = entry.value;
                            final cod = asig['codigo'] as String;
                            final nombre = asig['nombre'] as String;
                            final n1 = asig['notas1'] as List<double>;
                            final p1 = asig['prom1'] as double;

                            String fmt(double v) =>
                                v == 0.0 ? '' : v.toStringAsFixed(1);

                            final prom1Txt =
                                cod == '100' ? clasificarPromedio(p1) : fmt(p1);

                            return pw.TableRow(
                              children: [
                                pw.Container(
                                  padding: const pw.EdgeInsets.all(1),
                                  height: 12,
                                  alignment: pw.Alignment.centerLeft,
                                  child: pw.Text(
                                    '${idx + 1}  $cod - $nombre',
                                    style: pw.TextStyle(fontSize: 5),
                                  ),
                                ),
                                ...n1.map(
                                  (v) => pw.Container(
                                    padding: const pw.EdgeInsets.all(1),
                                    height: 12,
                                    alignment: pw.Alignment.center,
                                    child: pw.Text(
                                      fmt(v),
                                      style: pw.TextStyle(fontSize: 6),
                                    ),
                                  ),
                                ),
                                pw.Container(
                                  padding: const pw.EdgeInsets.all(1),
                                  height: 12,
                                  alignment: pw.Alignment.center,
                                  child: pw.Text(
                                    prom1Txt,
                                    style: pw.TextStyle(
                                      fontSize: 6,
                                      fontWeight: pw.FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                        ],
                      ),
                    ),
                    pw.SizedBox(width: 10),
                    // Tabla de Segundo Semestre
                    pw.Expanded(
                      child: pw.Table(
                        columnWidths: {
                          for (var i = 0; i <= 10; i++)
                            i: pw.FlexColumnWidth(1), // notas 1-10
                          11: pw.FlexColumnWidth(1.5), // promedio
                          12: pw.FlexColumnWidth(1.5), // final
                        },
                        border: pw.TableBorder.all(width: 0.5),
                        children: [
                          // Fila 1: Encabezado "Notas 2do Semestre" unificado
                          pw.TableRow(
                            decoration: pw.BoxDecoration(
                              color: PdfColor.fromInt(0xFFE8E8E8),
                            ),
                            children: [
                              pw.Container(
                                padding: const pw.EdgeInsets.all(4),
                                alignment: pw.Alignment.center,
                                child: pw.Text(
                                  'Notas 2do Semestre',
                                  style: pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: 8,
                                  ),
                                ),
                              ),
                              for (var i = 1; i <= 9; i++) pw.Container(),
                              pw.Container(
                                padding: const pw.EdgeInsets.all(4),
                                alignment: pw.Alignment.center,
                                child: pw.Text(
                                  'Prom\n2',
                                  style: pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: 7,
                                  ),
                                ),
                              ),
                              pw.Container(
                                padding: const pw.EdgeInsets.all(4),
                                alignment: pw.Alignment.center,
                                child: pw.Text(
                                  'Final',
                                  style: pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: 8,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // Fila 2: Números 1-10
                          pw.TableRow(
                            decoration: pw.BoxDecoration(
                              color: PdfColor.fromInt(0xFFF5F5F5),
                            ),
                            children: [
                              ...List.generate(
                                10,
                                (i) => pw.Container(
                                  padding: const pw.EdgeInsets.all(2),
                                  alignment: pw.Alignment.center,
                                  child: pw.Text(
                                    '${i + 1}',
                                    style: pw.TextStyle(
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 7,
                                    ),
                                  ),
                                ),
                              ),
                              pw.Container(),
                              pw.Container(),
                            ],
                          ),
                          // Filas de asignaturas
                          ...asignaturas.map((asig) {
                            final cod = asig['codigo'] as String;
                            final n2 = asig['notas2'] as List<double>;
                            final p2 = asig['prom2'] as double;
                            final pf = asig['prom_final'] as double;

                            String fmt(double v) =>
                                v == 0.0 ? '' : v.toStringAsFixed(1);

                            final prom2Txt =
                                cod == '100' ? clasificarPromedio(p2) : fmt(p2);
                            final pfTxt = cod == '100' ? '' : fmt(pf);

                            return pw.TableRow(
                              children: [
                                ...n2.map(
                                  (v) => pw.Container(
                                    padding: const pw.EdgeInsets.all(1),
                                    height: 12,
                                    alignment: pw.Alignment.center,
                                    child: pw.Text(
                                      fmt(v),
                                      style: pw.TextStyle(fontSize: 6),
                                    ),
                                  ),
                                ),
                                pw.Container(
                                  padding: const pw.EdgeInsets.all(1),
                                  height: 12,
                                  alignment: pw.Alignment.center,
                                  child: pw.Text(
                                    prom2Txt,
                                    style: pw.TextStyle(
                                      fontSize: 6,
                                      fontWeight: pw.FontWeight.bold,
                                    ),
                                  ),
                                ),
                                pw.Container(
                                  padding: const pw.EdgeInsets.all(1),
                                  height: 12,
                                  alignment: pw.Alignment.center,
                                  child: pw.Text(
                                    pfTxt,
                                    style: pw.TextStyle(
                                      fontSize: 6,
                                      fontWeight: pw.FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }).toList(),
                        ],
                      ),
                    ),
                  ],
                ),
                pw.SizedBox(height: 4),
                // Sección de promedios y asistencia en formato horizontal
                pw.Row(
                  mainAxisAlignment: pw.MainAxisAlignment.center,
                  children: [
                    pw.Container(
                      padding: pw.EdgeInsets.all(4),
                      decoration: pw.BoxDecoration(
                        border: pw.Border.all(
                          color: PdfColor.fromInt(0xFFCCCCCC),
                        ),
                        borderRadius: pw.BorderRadius.circular(4),
                      ),
                      child: pw.Column(
                        children: [
                          pw.Text(
                            'Promedio 1er',
                            style: pw.TextStyle(fontSize: 7),
                          ),
                          pw.Text(
                            'Semestre:',
                            style: pw.TextStyle(fontSize: 7),
                          ),
                          pw.SizedBox(height: 1),
                          pw.Text(
                            '${promedioSem1?.toStringAsFixed(1) ?? '0.0'}',
                            style: pw.TextStyle(
                              fontSize: 9,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(width: 20),
                    pw.Container(
                      padding: pw.EdgeInsets.all(4),
                      decoration: pw.BoxDecoration(
                        border: pw.Border.all(
                          color: PdfColor.fromInt(0xFFCCCCCC),
                        ),
                        borderRadius: pw.BorderRadius.circular(4),
                      ),
                      child: pw.Column(
                        children: [
                          pw.Text(
                            'Promedio 2do',
                            style: pw.TextStyle(fontSize: 7),
                          ),
                          pw.Text(
                            'Semestre:',
                            style: pw.TextStyle(fontSize: 7),
                          ),
                          pw.SizedBox(height: 1),
                          pw.Text(
                            '${promedioSem2?.toStringAsFixed(1) ?? '0.0'}',
                            style: pw.TextStyle(
                              fontSize: 9,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    pw.SizedBox(width: 20),
                    pw.Container(
                      padding: pw.EdgeInsets.all(4),
                      decoration: pw.BoxDecoration(
                        border: pw.Border.all(
                          color: PdfColor.fromInt(0xFFCCCCCC),
                        ),
                        borderRadius: pw.BorderRadius.circular(4),
                      ),
                      child: pw.Column(
                        children: [
                          pw.Text('Promedio', style: pw.TextStyle(fontSize: 7)),
                          pw.Text('General', style: pw.TextStyle(fontSize: 7)),
                          pw.SizedBox(height: 1),
                          pw.Text(
                            '${promedioFinal?.toStringAsFixed(1) ?? '0.0'}',
                            style: pw.TextStyle(
                              fontSize: 9,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                pw.SizedBox(height: 6),
                // Positivas/Negativas y Asistencia
                pw.Row(
                  children: [
                    pw.Expanded(
                      child: pw.Container(
                        padding: pw.EdgeInsets.all(4),
                        decoration: pw.BoxDecoration(
                          border: pw.Border.all(
                            color: PdfColor.fromInt(0xFFCCCCCC),
                          ),
                          borderRadius: pw.BorderRadius.circular(4),
                        ),
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text(
                              'Positivas:',
                              style: pw.TextStyle(fontSize: 8),
                            ),
                            pw.SizedBox(height: 2),
                            pw.Text(
                              'Negativas:',
                              style: pw.TextStyle(fontSize: 8),
                            ),
                          ],
                        ),
                      ),
                    ),
                    pw.SizedBox(width: 10),
                    pw.Expanded(
                      child: pw.Container(
                        padding: pw.EdgeInsets.all(4),
                        decoration: pw.BoxDecoration(
                          border: pw.Border.all(
                            color: PdfColor.fromInt(0xFFCCCCCC),
                          ),
                          borderRadius: pw.BorderRadius.circular(4),
                        ),
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text(
                              'Porcentaje de Asistencia:',
                              style: pw.TextStyle(fontSize: 8),
                            ),
                            pw.SizedBox(height: 2),
                            pw.Text(
                              '${asistencia?.toStringAsFixed(0) ?? '0'} %',
                              style: pw.TextStyle(
                                fontSize: 10,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    pw.SizedBox(width: 10),
                    pw.Expanded(
                      flex: 2,
                      child: pw.Container(
                        padding: pw.EdgeInsets.all(4),
                        decoration: pw.BoxDecoration(
                          border: pw.Border.all(
                            color: PdfColor.fromInt(0xFFCCCCCC),
                          ),
                          borderRadius: pw.BorderRadius.circular(4),
                        ),
                        child: pw.Column(
                          crossAxisAlignment: pw.CrossAxisAlignment.start,
                          children: [
                            pw.Text(
                              'Observaciones:',
                              style: pw.TextStyle(
                                fontSize: 8,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                            pw.SizedBox(height: 2),
                            pw.Text(
                              observaciones ?? 'Sin observaciones',
                              style: pw.TextStyle(fontSize: 7),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                pw.SizedBox(height: 4),
                pw.Divider(),
                pw.Align(
                  alignment: pw.Alignment.centerRight,
                  child: pw.Text(
                    'Emitido el ${DateFormat('dd/MM/yyyy').format(DateTime.now())}',
                    style: pw.TextStyle(fontSize: 7),
                  ),
                ),
              ],
            ),
      ),
    );

    return FFUploadedFile(bytes: await pdf.save());
  } catch (e) {
    print('Error generando PDF: $e');
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        build:
            (context) => pw.Center(child: pw.Text('Error generando PDF: $e')),
      ),
    );
    return FFUploadedFile(bytes: await pdf.save());
  }
}
