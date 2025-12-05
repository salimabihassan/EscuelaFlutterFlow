import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'colegio_widget.dart' show ColegioWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class ColegioModel extends FlutterFlowModel<ColegioWidget> {
  ///  Local state fields for this page.

  bool rutReadOnly = true;

  int guardarCount = 0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for rut_cole widget.
  FocusNode? rutColeFocusNode;
  TextEditingController? rutColeTextController;
  String? Function(BuildContext, String?)? rutColeTextControllerValidator;
  String? _rutColeTextControllerValidator(BuildContext context, String? val) {
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

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ColegioRecord>? resultRutColeConsul;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ProfRecord>? resulConsuProfConsulta;
  // State field(s) for nom_cole widget.
  FocusNode? nomColeFocusNode;
  TextEditingController? nomColeTextController;
  String? Function(BuildContext, String?)? nomColeTextControllerValidator;
  String? _nomColeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Requerido';
    }

    return null;
  }

  // State field(s) for dir_cole widget.
  FocusNode? dirColeFocusNode;
  TextEditingController? dirColeTextController;
  String? Function(BuildContext, String?)? dirColeTextControllerValidator;
  String? _dirColeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Requerido';
    }

    return null;
  }

  // State field(s) for tlf_cole widget.
  FocusNode? tlfColeFocusNode;
  TextEditingController? tlfColeTextController;
  late MaskTextInputFormatter tlfColeMask;
  String? Function(BuildContext, String?)? tlfColeTextControllerValidator;
  String? _tlfColeTextControllerValidator(BuildContext context, String? val) {
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

  // State field(s) for rut_rep widget.
  FocusNode? rutRepFocusNode;
  TextEditingController? rutRepTextController;
  String? Function(BuildContext, String?)? rutRepTextControllerValidator;
  String? _rutRepTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Requerido';
    }

    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in rut_rep widget.
  List<ProfRecord>? resulConsuProf;
  // State field(s) for nom_rep widget.
  FocusNode? nomRepFocusNode;
  TextEditingController? nomRepTextController;
  String? Function(BuildContext, String?)? nomRepTextControllerValidator;
  String? _nomRepTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Requerido';
    }

    return null;
  }

  // State field(s) for PreEscolar widget.
  bool? preEscolarValue;
  // State field(s) for Basica widget.
  bool? basicaValue;
  // State field(s) for Media widget.
  bool? mediaValue;
  // Stores action output result for [Firestore Query - Query a collection] action in guardar widget.
  List<ProfRecord>? resultProfColeGuardar;
  // Stores action output result for [Firestore Query - Query a collection] action in guardar widget.
  List<ColegioRecord>? resultRutColeGuardar;
  // Stores action output result for [Firestore Query - Query a collection] action in guardar widget.
  List<ProfRecord>? resulConsuProfGuardar;

  @override
  void initState(BuildContext context) {
    rutColeTextControllerValidator = _rutColeTextControllerValidator;
    nomColeTextControllerValidator = _nomColeTextControllerValidator;
    dirColeTextControllerValidator = _dirColeTextControllerValidator;
    tlfColeTextControllerValidator = _tlfColeTextControllerValidator;
    rutRepTextControllerValidator = _rutRepTextControllerValidator;
    nomRepTextControllerValidator = _nomRepTextControllerValidator;
  }

  @override
  void dispose() {
    rutColeFocusNode?.dispose();
    rutColeTextController?.dispose();

    nomColeFocusNode?.dispose();
    nomColeTextController?.dispose();

    dirColeFocusNode?.dispose();
    dirColeTextController?.dispose();

    tlfColeFocusNode?.dispose();
    tlfColeTextController?.dispose();

    rutRepFocusNode?.dispose();
    rutRepTextController?.dispose();

    nomRepFocusNode?.dispose();
    nomRepTextController?.dispose();
  }
}
