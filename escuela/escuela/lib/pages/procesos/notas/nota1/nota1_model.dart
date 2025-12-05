import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'nota1_widget.dart' show Nota1Widget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Nota1Model extends FlutterFlowModel<Nota1Widget> {
  ///  Local state fields for this component.

  double? notaProm;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nota01 widget.
  FocusNode? nota01FocusNode;
  TextEditingController? nota01TextController;
  String? Function(BuildContext, String?)? nota01TextControllerValidator;
  // State field(s) for nota02 widget.
  FocusNode? nota02FocusNode;
  TextEditingController? nota02TextController;
  String? Function(BuildContext, String?)? nota02TextControllerValidator;
  // State field(s) for nota03 widget.
  FocusNode? nota03FocusNode;
  TextEditingController? nota03TextController;
  String? Function(BuildContext, String?)? nota03TextControllerValidator;
  // State field(s) for nota04 widget.
  FocusNode? nota04FocusNode;
  TextEditingController? nota04TextController;
  String? Function(BuildContext, String?)? nota04TextControllerValidator;
  // State field(s) for nota05 widget.
  FocusNode? nota05FocusNode;
  TextEditingController? nota05TextController;
  String? Function(BuildContext, String?)? nota05TextControllerValidator;
  // State field(s) for nota06 widget.
  FocusNode? nota06FocusNode;
  TextEditingController? nota06TextController;
  String? Function(BuildContext, String?)? nota06TextControllerValidator;
  // State field(s) for nota07 widget.
  FocusNode? nota07FocusNode;
  TextEditingController? nota07TextController;
  String? Function(BuildContext, String?)? nota07TextControllerValidator;
  // State field(s) for nota08 widget.
  FocusNode? nota08FocusNode;
  TextEditingController? nota08TextController;
  String? Function(BuildContext, String?)? nota08TextControllerValidator;
  // State field(s) for nota09 widget.
  FocusNode? nota09FocusNode;
  TextEditingController? nota09TextController;
  String? Function(BuildContext, String?)? nota09TextControllerValidator;
  // State field(s) for nota10 widget.
  FocusNode? nota10FocusNode;
  TextEditingController? nota10TextController;
  String? Function(BuildContext, String?)? nota10TextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in guardar widget.
  NotasRecord? resultNotaSemestre;
  // Stores action output result for [Firestore Query - Query a collection] action in guardar widget.
  NotasRecord? resultNotaProm1Sem;
  // Stores action output result for [Firestore Query - Query a collection] action in guardar widget.
  NotasRecord? resultNota1Semestre;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nota01FocusNode?.dispose();
    nota01TextController?.dispose();

    nota02FocusNode?.dispose();
    nota02TextController?.dispose();

    nota03FocusNode?.dispose();
    nota03TextController?.dispose();

    nota04FocusNode?.dispose();
    nota04TextController?.dispose();

    nota05FocusNode?.dispose();
    nota05TextController?.dispose();

    nota06FocusNode?.dispose();
    nota06TextController?.dispose();

    nota07FocusNode?.dispose();
    nota07TextController?.dispose();

    nota08FocusNode?.dispose();
    nota08TextController?.dispose();

    nota09FocusNode?.dispose();
    nota09TextController?.dispose();

    nota10FocusNode?.dispose();
    nota10TextController?.dispose();
  }
}
