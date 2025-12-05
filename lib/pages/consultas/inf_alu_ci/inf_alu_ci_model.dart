import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'inf_alu_ci_widget.dart' show InfAluCiWidget;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InfAluCiModel extends FlutterFlowModel<InfAluCiWidget> {
  ///  Local state fields for this page.

  int guardarCount = 0;

  String? ciAlu;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ci_alu widget.
  FocusNode? ciAluFocusNode;
  TextEditingController? ciAluTextController;
  String? Function(BuildContext, String?)? ciAluTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ciAluFocusNode?.dispose();
    ciAluTextController?.dispose();
  }
}
