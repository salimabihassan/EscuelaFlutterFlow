import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/procesos/notas/nota1/nota1_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'ingreso_notas_widget.dart' show IngresoNotasWidget;
import 'package:styled_divider/styled_divider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IngresoNotasModel extends FlutterFlowModel<IngresoNotasWidget> {
  ///  Local state fields for this page.

  int guardarCount = 0;

  int? cursoAsign = 0;

  int? codAsig;

  int semestre = 1;

  DocumentReference? asigRefPageState;

  String? secCurso = '';

  int? periodo;

  String? nomAsigPageState;

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
  // State field(s) for asig_nota1 widget.
  int? asigNota1Value;
  FormFieldController<int>? asigNota1ValueController;
  // State field(s) for asig_nota2 widget.
  int? asigNota2Value;
  FormFieldController<int>? asigNota2ValueController;
  // State field(s) for asig_nota3 widget.
  int? asigNota3Value;
  FormFieldController<int>? asigNota3ValueController;
  // State field(s) for asig_nota4 widget.
  int? asigNota4Value;
  FormFieldController<int>? asigNota4ValueController;
  // State field(s) for asig_nota5 widget.
  int? asigNota5Value;
  FormFieldController<int>? asigNota5ValueController;
  // State field(s) for asig_nota6 widget.
  int? asigNota6Value;
  FormFieldController<int>? asigNota6ValueController;
  // State field(s) for asig_nota7 widget.
  int? asigNota7Value;
  FormFieldController<int>? asigNota7ValueController;
  // State field(s) for asig_nota8 widget.
  int? asigNota8Value;
  FormFieldController<int>? asigNota8ValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  AsignaturaRecord? resulCodAsiNomAsig;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  List<NotasRecord>? resultNota1SemestreIcon;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
