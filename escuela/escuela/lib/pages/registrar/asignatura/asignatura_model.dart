import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'asignatura_widget.dart' show AsignaturaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AsignaturaModel extends FlutterFlowModel<AsignaturaWidget> {
  ///  Local state fields for this page.

  int guardarState = 0;

  int? codAsigOnlyRead = 0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for cod_asig widget.
  FocusNode? codAsigFocusNode;
  TextEditingController? codAsigTextController;
  String? Function(BuildContext, String?)? codAsigTextControllerValidator;
  String? _codAsigTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Requerido';
    }

    return null;
  }

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<AsignaturaRecord>? resulCodAsigConsul;
  // State field(s) for nom_asig widget.
  FocusNode? nomAsigFocusNode;
  TextEditingController? nomAsigTextController;
  String? Function(BuildContext, String?)? nomAsigTextControllerValidator;
  String? _nomAsigTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Requerido';
    }

    return null;
  }

  // State field(s) for PrimeroB widget.
  bool? primeroBValue;
  // State field(s) for SegundoB widget.
  bool? segundoBValue;
  // State field(s) for TerceroB widget.
  bool? terceroBValue;
  // State field(s) for CuartoB widget.
  bool? cuartoBValue;
  // State field(s) for QuintoB widget.
  bool? quintoBValue;
  // State field(s) for SextoB widget.
  bool? sextoBValue;
  // State field(s) for SeptimoB widget.
  bool? septimoBValue;
  // State field(s) for OctavoB widget.
  bool? octavoBValue;
  // Stores action output result for [Firestore Query - Query a collection] action in guardar widget.
  List<AsignaturaRecord>? resulCodAsigGuardar;

  @override
  void initState(BuildContext context) {
    codAsigTextControllerValidator = _codAsigTextControllerValidator;
    nomAsigTextControllerValidator = _nomAsigTextControllerValidator;
  }

  @override
  void dispose() {
    codAsigFocusNode?.dispose();
    codAsigTextController?.dispose();

    nomAsigFocusNode?.dispose();
    nomAsigTextController?.dispose();
  }
}
