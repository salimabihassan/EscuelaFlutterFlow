import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/procesos/inf_perso/ambito_evaluacion_item/ambito_evaluacion_item_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'infrome_personalidad2_widget.dart' show InfromePersonalidad2Widget;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InfromePersonalidad2Model
    extends FlutterFlowModel<InfromePersonalidad2Widget> {
  ///  Local state fields for this page.

  int guardarCount = 0;

  int? cursoAsign = 0;

  int? codAsig;

  int semestre = 1;

  AlumnoRecord? aluReferencia;

  String? secCurso = '';

  int? periodo;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
