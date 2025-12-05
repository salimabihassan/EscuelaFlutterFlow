import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'curso_widget.dart' show CursoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CursoModel extends FlutterFlowModel<CursoWidget> {
  ///  Local state fields for this page.

  bool visible = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for grado widget.
  int? gradoValue;
  FormFieldController<int>? gradoValueController;
  // State field(s) for seccion widget.
  String? seccionValue;
  FormFieldController<String>? seccionValueController;
  // State field(s) for periodo widget.
  FocusNode? periodoFocusNode;
  TextEditingController? periodoTextController;
  String? Function(BuildContext, String?)? periodoTextControllerValidator;
  String? _periodoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Periodo es requerido ';
    }

    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in Consultar_curso widget.
  List<CursoRecord>? resulCurso;
  // Stores action output result for [Firestore Query - Query a collection] action in Consultar_curso widget.
  ProfRecord? consultaProfConsultar;
  // State field(s) for ci_prof widget.
  FocusNode? ciProfFocusNode;
  TextEditingController? ciProfTextController;
  String? Function(BuildContext, String?)? ciProfTextControllerValidator;
  String? _ciProfTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'N° Rut es requerido';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }
    if (val.length > 9) {
      return 'Maximum 9 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ProfRecord>? resulConsulProf;
  // State field(s) for nom_prof widget.
  FocusNode? nomProfFocusNode;
  TextEditingController? nomProfTextController;
  String? Function(BuildContext, String?)? nomProfTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in guardar widget.
  List<ProfRecord>? resulCursoProfGuardar;
  // Stores action output result for [Firestore Query - Query a collection] action in guardar widget.
  List<CursoRecord>? resultCodCursoRutProf;
  // Stores action output result for [Firestore Query - Query a collection] action in guardar widget.
  CursoRecord? resultCursoProfDiferente;
  // Stores action output result for [Firestore Query - Query a collection] action in guardar widget.
  List<CursoRecord>? resulCiProfPeriodo;

  @override
  void initState(BuildContext context) {
    periodoTextControllerValidator = _periodoTextControllerValidator;
    ciProfTextControllerValidator = _ciProfTextControllerValidator;
  }

  @override
  void dispose() {
    periodoFocusNode?.dispose();
    periodoTextController?.dispose();

    ciProfFocusNode?.dispose();
    ciProfTextController?.dispose();

    nomProfFocusNode?.dispose();
    nomProfTextController?.dispose();
  }
}
