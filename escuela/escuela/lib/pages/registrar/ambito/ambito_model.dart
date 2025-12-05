import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'ambito_widget.dart' show AmbitoWidget;
import 'package:styled_divider/styled_divider.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AmbitoModel extends FlutterFlowModel<AmbitoWidget> {
  ///  Local state fields for this page.

  int codAmbitoOnlyRead = 0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for cod_ambito widget.
  FocusNode? codAmbitoFocusNode;
  TextEditingController? codAmbitoTextController;
  String? Function(BuildContext, String?)? codAmbitoTextControllerValidator;
  String? _codAmbitoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo  es requerido';
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<AmbitoRecord>? resulCodAmbitoConsul;
  // State field(s) for nom_ambito widget.
  FocusNode? nomAmbitoFocusNode;
  TextEditingController? nomAmbitoTextController;
  String? Function(BuildContext, String?)? nomAmbitoTextControllerValidator;
  String? _nomAmbitoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo  es requerido';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  List<AmbitoRecord>? resultBuscaListView;
  // Stores action output result for [Firestore Query - Query a collection] action in guardar widget.
  List<AmbitoRecord>? resulCodAmbitoGuardar;

  @override
  void initState(BuildContext context) {
    codAmbitoTextControllerValidator = _codAmbitoTextControllerValidator;
    nomAmbitoTextControllerValidator = _nomAmbitoTextControllerValidator;
  }

  @override
  void dispose() {
    codAmbitoFocusNode?.dispose();
    codAmbitoTextController?.dispose();

    nomAmbitoFocusNode?.dispose();
    nomAmbitoTextController?.dispose();
  }
}
