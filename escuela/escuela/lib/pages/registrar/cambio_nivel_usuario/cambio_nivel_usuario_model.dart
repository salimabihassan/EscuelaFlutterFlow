import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'cambio_nivel_usuario_widget.dart' show CambioNivelUsuarioWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CambioNivelUsuarioModel
    extends FlutterFlowModel<CambioNivelUsuarioWidget> {
  ///  Local state fields for this page.

  int guardarProf = 0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
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

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<UserRecord>? resulUserConsul;
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

  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;

  @override
  void initState(BuildContext context) {
    ciProfTextControllerValidator = _ciProfTextControllerValidator;
    nomProfTextControllerValidator = _nomProfTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
  }

  @override
  void dispose() {
    ciProfFocusNode?.dispose();
    ciProfTextController?.dispose();

    nomProfFocusNode?.dispose();
    nomProfTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
