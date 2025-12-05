import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'alumno_registro_widget.dart' show AlumnoRegistroWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AlumnoRegistroModel extends FlutterFlowModel<AlumnoRegistroWidget> {
  ///  Local state fields for this page.

  int guardarCount = 0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ci_alu widget.
  FocusNode? ciAluFocusNode;
  TextEditingController? ciAluTextController;
  String? Function(BuildContext, String?)? ciAluTextControllerValidator;
  String? _ciAluTextControllerValidator(BuildContext context, String? val) {
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
  List<AlumnoRecord>? resulAluConsul;
  // State field(s) for nom_alu widget.
  FocusNode? nomAluFocusNode;
  TextEditingController? nomAluTextController;
  String? Function(BuildContext, String?)? nomAluTextControllerValidator;
  String? _nomAluTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nombre Alumno es requerido';
    }

    return null;
  }

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

  // State field(s) for sexo widget.
  String? sexoValue;
  FormFieldController<String>? sexoValueController;
  // State field(s) for grado widget.
  int? gradoValue;
  FormFieldController<int>? gradoValueController;
  // State field(s) for seccion widget.
  String? seccionValue;
  FormFieldController<String>? seccionValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in guardar widget.
  List<AlumnoRecord>? resultAlu;

  @override
  void initState(BuildContext context) {
    ciAluTextControllerValidator = _ciAluTextControllerValidator;
    nomAluTextControllerValidator = _nomAluTextControllerValidator;
    periodoTextControllerValidator = _periodoTextControllerValidator;
  }

  @override
  void dispose() {
    ciAluFocusNode?.dispose();
    ciAluTextController?.dispose();

    nomAluFocusNode?.dispose();
    nomAluTextController?.dispose();

    periodoFocusNode?.dispose();
    periodoTextController?.dispose();
  }
}
