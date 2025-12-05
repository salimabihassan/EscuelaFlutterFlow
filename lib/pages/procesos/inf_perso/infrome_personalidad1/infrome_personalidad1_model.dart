import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'infrome_personalidad1_widget.dart' show InfromePersonalidad1Widget;
import 'package:styled_divider/styled_divider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InfromePersonalidad1Model
    extends FlutterFlowModel<InfromePersonalidad1Widget> {
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
  // State field(s) for cod_curso widget.
  String? codCursoValue;
  FormFieldController<String>? codCursoValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in cod_curso widget.
  CursoRecord? resultDropdownCodcurso;
  // State field(s) for semestre widget.
  int? semestreValue;
  FormFieldController<int>? semestreValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
