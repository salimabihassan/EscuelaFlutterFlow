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

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<FFUploadedFile> generatePDFFromHTML(
  String htmlContent,
  String apiKey,
  bool? isLandscape,
) async {
  try {
    final response = await http.post(
      Uri.parse('https://api.pdfshift.io/v3/convert/pdf'),
      headers: {
        'Authorization': 'Basic ${base64Encode(utf8.encode('api:$apiKey'))}',
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'source': htmlContent,
        'landscape': isLandscape ?? true,
        'format': 'A4',
        'margin': '10px',
      }),
    );

    if (response.statusCode == 200) {
      return FFUploadedFile(
        name: 'reporte_${DateTime.now().millisecondsSinceEpoch}.pdf',
        bytes: response.bodyBytes,
      );
    } else {
      throw Exception('Error API: ${response.statusCode} - ${response.body}');
    }
  } catch (e) {
    print('Error generando PDF: $e');
    throw e;
  }
}
