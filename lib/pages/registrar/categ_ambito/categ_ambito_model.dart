import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'categ_ambito_widget.dart' show CategAmbitoWidget;
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

class CategAmbitoModel extends FlutterFlowModel<CategAmbitoWidget> {
  ///  Local state fields for this page.

  int codAmbitoOnlyRead = 0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for cod_Categoria widget.
  FocusNode? codCategoriaFocusNode;
  TextEditingController? codCategoriaTextController;
  String? Function(BuildContext, String?)? codCategoriaTextControllerValidator;
  String? _codCategoriaTextControllerValidator(
      BuildContext context, String? val) {
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
  List<AmbitoRecord>? resulCodAmbitoConsul;
  // State field(s) for Descrip_Categoria widget.
  FocusNode? descripCategoriaFocusNode;
  TextEditingController? descripCategoriaTextController;
  String? Function(BuildContext, String?)?
      descripCategoriaTextControllerValidator;
  String? _descripCategoriaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Nombre Alumno es requerido';
    }

    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in Icon widget.
  List<CategAmbitoRecord>? resultBuscaListView;
  // Stores action output result for [Firestore Query - Query a collection] action in guardar widget.
  List<CategAmbitoRecord>? resulCodCatAmbitoGuardar;

  @override
  void initState(BuildContext context) {
    codCategoriaTextControllerValidator = _codCategoriaTextControllerValidator;
    descripCategoriaTextControllerValidator =
        _descripCategoriaTextControllerValidator;
  }

  @override
  void dispose() {
    codCategoriaFocusNode?.dispose();
    codCategoriaTextController?.dispose();

    descripCategoriaFocusNode?.dispose();
    descripCategoriaTextController?.dispose();
  }
}
