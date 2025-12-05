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

String buildPersonalidadHTML(
  String? rutAlumno,
  String? nombreAlumno,
  String? grado,
  String? periodo,
  List<InfPersoRecord>? ambitosDocs,
  List<AmbitoRecord>? ambitosRef,
  String? nombreProfesor,
  String? nombreDirector,
) {
  // Crear mapa de nombres de ámbitos por código
  final Map<int, String> nombresAmbitos = {};
  for (var ambito in ambitosRef ?? []) {
    nombresAmbitos[ambito.codAmbito ?? 0] = ambito.nomAmbito ?? '';
  }

  // Parsear ámbitos directamente desde los documentos
  final ambitos = (ambitosDocs ?? []).map((doc) {
    final codAmbito = doc.codAmbito ?? 0;
    return {
      'cod_ambito': codAmbito,
      'nom_ambito': nombresAmbitos[codAmbito] ?? 'Ámbito $codAmbito',
      'lit1': doc.litSem1 ?? '',
      'lit2': doc.litSem2 ?? '',
      'categ': doc.categAmbito ?? 0,
    };
  }).toList();

  // Categorías de ámbitos
  final Map<int, String> categorias = {
    1: 'ÁMBITO: RELACIÓN CON SUS PARES',
    2: 'ÁMBITO: DISCIPLINARIO',
    3: 'ÁMBITO: RESPONSABILIDAD',
    4: 'ÁMBITO: TRABAJO EN AULA',
    5: 'ÁMBITO: AFECTIVIDAD',
    6: 'ÁMBITO: PRESENTACIÓN PERSONAL',
    7: 'ÁMBITO: EN CUANTO A LOS PADRES Y/O APODERADOS',
  };

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

  // Construir filas de tabla
  String tablaRows = '';
  int categoriaActual = 0;
  bool colorAlterno = false;

  for (var i = 0; i < ambitos.length; i++) {
    final ambito = ambitos[i];
    final codAmbito = ambito['cod_ambito'] as int? ?? 0;
    final nombreAmbito =
        ambito['nom_ambito']?.toString() ?? 'Ámbito $codAmbito';
    final lit1 = ambito['lit1']?.toString() ?? '';
    final lit2 = ambito['lit2']?.toString() ?? '';
    final categ = ambito['categ'] as int? ?? 0;

    // Verificar si cambió la categoría
    if (categ != categoriaActual) {
      categoriaActual = categ;
      final nombreCategoria = categorias[categ] ?? '';
      tablaRows += '''
        <tr>
          <th colspan="3" align="center" bgcolor="#E9E9E9"><strong>$nombreCategoria</strong></th>
          <th align="center" bgcolor="#E9E9E9">&nbsp;</th>
          <th align="center" bgcolor="#E9E9E9">&nbsp;</th>
        </tr>
      ''';
    }

    // Alternar color de fila
    final bgColor = colorAlterno ? '#FFFFFF' : '#CCEEFF';
    colorAlterno = !colorAlterno;

    tablaRows += '''
      <tr bgcolor="$bgColor">
        <td width="5%" align="left">$codAmbito</td>
        <td colspan="2" align="left" style="text-align: left;">$nombreAmbito</td>
        <td width="8%" align="center">$lit1</td>
        <td width="8%" align="center">$lit2</td>
      </tr>
    ''';
  }

  return '''
<!DOCTYPE html>
<html lang="es">
<head>
<meta charset="UTF-8" />
<title>INFORME DE PERSONALIDAD</title>
<style>
@page { margin: 2cm 2cm 2cm 2cm; }
body { font-family: Verdana, Geneva, sans-serif; font-size: 12px; background: #fff; margin: 0; padding: 0; }
.caja { background-color: #e3eafc; padding: 10px 14px; border-radius: 7px; margin-bottom: 10px; box-shadow: 0 2px 8px rgba(0,0,0,0.07); }
table { border-collapse: collapse; border-spacing: 0; margin-bottom: 15px; width: 95%; background: #fff; }
th, td { border: 1px solid #cfd8dc; padding: 5px 4px; text-align: center; font-size: 12px; }
th { background: #e9f0fb; font-weight: 600; }
.titulo { font-size: 19px; color: #00366C; font-weight: bold; margin-bottom: 5px; text-shadow: 0.05em 0.05em 0.03em #999; }
.leyenda { background: transparent; border-radius: 0; padding: 0; margin-top: 20px; margin-bottom: 15px; font-size: 11px; width: 30%; text-align: left; }
.leyenda table { width: 100%; }
.firmas { margin-top: 80px; width: 80%; }
.firmas td { border: none; background: none; padding: 20px 40px; }
.linea-firma { border-top: 1px solid #00366C; width: 250px; margin: 0 auto 5px auto; }
@media print { body { background: #fff; } }
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
        <div style="margin-top:8px; font-size:11px; color:#555;">$fechaLetra</div>
    </div>
</div>

<table>
    <tr>
        <td colspan="5" class="titulo" style="background:#e3eafc;">INFORME DE PERSONALIDAD</td>
    </tr>
    <tr>
        <td colspan="5">&nbsp;</td>
    </tr>
    <tr bgcolor="#F9F9F9">
        <td align="right"><strong>Cédula:</strong></td>
        <td><strong>${rutAlumno ?? ''}</strong></td>
        <td>&nbsp;</td>
        <td align="right"><strong>Nombre:</strong></td>
        <td><strong>${nombreAlumno ?? ''}</strong></td>
    </tr>
    <tr bgcolor="#E9E9E9">
        <td>&nbsp;</td>
        <td align="right"><strong>Curso:</strong></td>
        <td align="left"><strong>$gradoTexto</strong></td>
        <td align="left"><strong>Periodo Escolar:</strong></td>
        <td align="left"><strong>${periodo ?? ''}</strong></td>
    </tr>
</table>

<table>
    <tr>
        <th colspan="3" align="center" bgcolor="#E9E9E9"><strong>ÁMBITO/INDICADORES</strong></th>
        <th align="center" bgcolor="#E9E9E9"><strong>1° SEM</strong></th>
        <th align="center" bgcolor="#E9E9E9"><strong>2° SEM</strong></th>
    </tr>
    $tablaRows
</table>

<div style="width: 95%; text-align: left;">
<div class="leyenda">
    <table border="0" cellpadding="3" cellspacing="0">
        <tr>
            <th colspan="2" align="left" bgcolor="#E9E9E9"><strong>Indicadores</strong></th>
        </tr>
        <tr bgcolor="#CCFFFF">
            <td width="20%" align="center"><strong>S</strong></td>
            <td width="80%" align="left"><strong>Siempre</strong></td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td align="center"><strong>F</strong></td>
            <td align="left"><strong>Frecuentemente</strong></td>
        </tr>
        <tr bgcolor="#CCFFFF">
            <td align="center"><strong>O</strong></td>
            <td align="left"><strong>Ocasionalmente</strong></td>
        </tr>
        <tr bgcolor="#FFFFFF">
            <td align="center"><strong>NO</strong></td>
            <td align="left"><strong>No observado</strong></td>
        </tr>
        <tr bgcolor="#CCFFFF">
            <td align="center"><strong>N</strong></td>
            <td align="left"><strong>Nunca</strong></td>
        </tr>
    </table>
</div>
</div>

<table class="firmas">
    <tr>
        <td align="center">
            <div class="linea-firma"></div>
            <strong>${nombreProfesor ?? ''}</strong><br>
            PROFESOR JEFE
        </td>
        <td align="center">
            <div class="linea-firma"></div>
            <strong>${nombreDirector ?? ''}</strong><br>
            DIRECCIÓN
        </td>
    </tr>
</table>

</center>
</body>
</html>
  ''';
}
