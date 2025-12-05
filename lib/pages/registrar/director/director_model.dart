import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'director_widget.dart' show DirectorWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class DirectorModel extends FlutterFlowModel<DirectorWidget> {
  ///  Local state fields for this page.

  int guardarProf = 0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Firestore Query - Query a collection] action in Director widget.
  List<ProfRecord>? resulDirectorConsul;
  // State field(s) for ci_prof widget.
  FocusNode? ciProfFocusNode;
  TextEditingController? ciProfTextController;
  String? Function(BuildContext, String?)? ciProfTextControllerValidator;
  String? _ciProfTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Requerido';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }
    if (val.length > 9) {
      return 'Maximum 9 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in ci_prof widget.
  ProfRecord? resulDirector;
  // State field(s) for nom_prof widget.
  FocusNode? nomProfFocusNode;
  TextEditingController? nomProfTextController;
  String? Function(BuildContext, String?)? nomProfTextControllerValidator;
  String? _nomProfTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Requerido';
    }

    return null;
  }

  // State field(s) for dir_prof widget.
  FocusNode? dirProfFocusNode;
  TextEditingController? dirProfTextController;
  String? Function(BuildContext, String?)? dirProfTextControllerValidator;
  String? _dirProfTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Requerido';
    }

    return null;
  }

  // State field(s) for tlf_prof widget.
  FocusNode? tlfProfFocusNode;
  TextEditingController? tlfProfTextController;
  late MaskTextInputFormatter tlfProfMask;
  String? Function(BuildContext, String?)? tlfProfTextControllerValidator;
  String? _tlfProfTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Requerido';
    }

    if (val.length < 11) {
      return 'Requires at least 11 characters.';
    }
    if (val.length > 11) {
      return 'Maximum 11 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // State field(s) for Email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Requerido';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Email Invalido';
    }
    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in guardar widget.
  List<ProfRecord>? resultDirectorGuardar;

  @override
  void initState(BuildContext context) {
    ciProfTextControllerValidator = _ciProfTextControllerValidator;
    nomProfTextControllerValidator = _nomProfTextControllerValidator;
    dirProfTextControllerValidator = _dirProfTextControllerValidator;
    tlfProfTextControllerValidator = _tlfProfTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
  }

  @override
  void dispose() {
    ciProfFocusNode?.dispose();
    ciProfTextController?.dispose();

    nomProfFocusNode?.dispose();
    nomProfTextController?.dispose();

    dirProfFocusNode?.dispose();
    dirProfTextController?.dispose();

    tlfProfFocusNode?.dispose();
    tlfProfTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
