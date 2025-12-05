import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'inf_notas_por_alumno_widget.dart' show InfNotasPorAlumnoWidget;
import 'package:styled_divider/styled_divider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InfNotasPorAlumnoModel extends FlutterFlowModel<InfNotasPorAlumnoWidget> {
  ///  Local state fields for this page.

  int guardarCount = 0;

  int semestre = 1;

  AlumnoRecord? pageStateAlu;

  int? gradoPageState;

  List<double> promediosSem1 = [];
  void addToPromediosSem1(double item) => promediosSem1.add(item);
  void removeFromPromediosSem1(double item) => promediosSem1.remove(item);
  void removeAtIndexFromPromediosSem1(int index) =>
      promediosSem1.removeAt(index);
  void insertAtIndexInPromediosSem1(int index, double item) =>
      promediosSem1.insert(index, item);
  void updatePromediosSem1AtIndex(int index, Function(double) updateFn) =>
      promediosSem1[index] = updateFn(promediosSem1[index]);

  List<double> promdiosSem2 = [];
  void addToPromdiosSem2(double item) => promdiosSem2.add(item);
  void removeFromPromdiosSem2(double item) => promdiosSem2.remove(item);
  void removeAtIndexFromPromdiosSem2(int index) => promdiosSem2.removeAt(index);
  void insertAtIndexInPromdiosSem2(int index, double item) =>
      promdiosSem2.insert(index, item);
  void updatePromdiosSem2AtIndex(int index, Function(double) updateFn) =>
      promdiosSem2[index] = updateFn(promdiosSem2[index]);

  List<String> notas1Sem = [];
  void addToNotas1Sem(String item) => notas1Sem.add(item);
  void removeFromNotas1Sem(String item) => notas1Sem.remove(item);
  void removeAtIndexFromNotas1Sem(int index) => notas1Sem.removeAt(index);
  void insertAtIndexInNotas1Sem(int index, String item) =>
      notas1Sem.insert(index, item);
  void updateNotas1SemAtIndex(int index, Function(String) updateFn) =>
      notas1Sem[index] = updateFn(notas1Sem[index]);

  List<String> notas2Sem = [];
  void addToNotas2Sem(String item) => notas2Sem.add(item);
  void removeFromNotas2Sem(String item) => notas2Sem.remove(item);
  void removeAtIndexFromNotas2Sem(int index) => notas2Sem.removeAt(index);
  void insertAtIndexInNotas2Sem(int index, String item) =>
      notas2Sem.insert(index, item);
  void updateNotas2SemAtIndex(int index, Function(String) updateFn) =>
      notas2Sem[index] = updateFn(notas2Sem[index]);

  List<double> promFinal = [];
  void addToPromFinal(double item) => promFinal.add(item);
  void removeFromPromFinal(double item) => promFinal.remove(item);
  void removeAtIndexFromPromFinal(int index) => promFinal.removeAt(index);
  void insertAtIndexInPromFinal(int index, double item) =>
      promFinal.insert(index, item);
  void updatePromFinalAtIndex(int index, Function(double) updateFn) =>
      promFinal[index] = updateFn(promFinal[index]);

  List<String> asignaturasFinal = [];
  void addToAsignaturasFinal(String item) => asignaturasFinal.add(item);
  void removeFromAsignaturasFinal(String item) => asignaturasFinal.remove(item);
  void removeAtIndexFromAsignaturasFinal(int index) =>
      asignaturasFinal.removeAt(index);
  void insertAtIndexInAsignaturasFinal(int index, String item) =>
      asignaturasFinal.insert(index, item);
  void updateAsignaturasFinalAtIndex(int index, Function(String) updateFn) =>
      asignaturasFinal[index] = updateFn(asignaturasFinal[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ci_alu widget.
  FocusNode? ciAluFocusNode;
  TextEditingController? ciAluTextController;
  String? Function(BuildContext, String?)? ciAluTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<AlumnoRecord>? resulAluConsul;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<NotasRecord>? resultProm1Sem;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<NotasRecord>? resultProm2Sem;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  NotaInformeRecord? resulInfNota;
  // State field(s) for nom_alu widget.
  FocusNode? nomAluFocusNode;
  TextEditingController? nomAluTextController;
  String? Function(BuildContext, String?)? nomAluTextControllerValidator;
  // State field(s) for grado widget.
  FocusNode? gradoFocusNode;
  TextEditingController? gradoTextController;
  String? Function(BuildContext, String?)? gradoTextControllerValidator;
  // State field(s) for seccion widget.
  FocusNode? seccionFocusNode;
  TextEditingController? seccionTextController;
  String? Function(BuildContext, String?)? seccionTextControllerValidator;
  // State field(s) for periodo widget.
  FocusNode? periodoFocusNode;
  TextEditingController? periodoTextController;
  String? Function(BuildContext, String?)? periodoTextControllerValidator;
  // State field(s) for PromSem1 widget.
  FocusNode? promSem1FocusNode;
  TextEditingController? promSem1TextController;
  String? Function(BuildContext, String?)? promSem1TextControllerValidator;
  // State field(s) for PromSem2 widget.
  FocusNode? promSem2FocusNode;
  TextEditingController? promSem2TextController;
  String? Function(BuildContext, String?)? promSem2TextControllerValidator;
  // State field(s) for PromGeneral widget.
  FocusNode? promGeneralFocusNode;
  TextEditingController? promGeneralTextController;
  String? Function(BuildContext, String?)? promGeneralTextControllerValidator;
  // State field(s) for positiva widget.
  FocusNode? positivaFocusNode;
  TextEditingController? positivaTextController;
  String? Function(BuildContext, String?)? positivaTextControllerValidator;
  // State field(s) for Negativa widget.
  FocusNode? negativaFocusNode;
  TextEditingController? negativaTextController;
  String? Function(BuildContext, String?)? negativaTextControllerValidator;
  // State field(s) for Porc_Asist widget.
  FocusNode? porcAsistFocusNode;
  TextEditingController? porcAsistTextController;
  String? Function(BuildContext, String?)? porcAsistTextControllerValidator;
  // State field(s) for Observaciones widget.
  FocusNode? observacionesFocusNode;
  TextEditingController? observacionesTextController;
  String? Function(BuildContext, String?)? observacionesTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Imp_Inf_Parcial widget.
  NotaInformeRecord? resulInfNota1;
  // Stores action output result for [Firestore Query - Query a collection] action in Imp_Inf_Parcial widget.
  List<NotasRecord>? notasSem1List;
  // Stores action output result for [Firestore Query - Query a collection] action in Imp_Inf_Parcial widget.
  List<NotasRecord>? notasSem2List;
  // Stores action output result for [Firestore Query - Query a collection] action in Imp_Inf_Parcial widget.
  List<AsignaturaRecord>? asignaturasList;
  // Stores action output result for [Custom Action - buildReportHTML] action in Imp_Inf_Parcial widget.
  String? htmlContent;
  // Stores action output result for [Custom Action - generatePDFFromHTML] action in Imp_Inf_Parcial widget.
  FFUploadedFile? resultHtmlContent;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    ciAluFocusNode?.dispose();
    ciAluTextController?.dispose();

    nomAluFocusNode?.dispose();
    nomAluTextController?.dispose();

    gradoFocusNode?.dispose();
    gradoTextController?.dispose();

    seccionFocusNode?.dispose();
    seccionTextController?.dispose();

    periodoFocusNode?.dispose();
    periodoTextController?.dispose();

    promSem1FocusNode?.dispose();
    promSem1TextController?.dispose();

    promSem2FocusNode?.dispose();
    promSem2TextController?.dispose();

    promGeneralFocusNode?.dispose();
    promGeneralTextController?.dispose();

    positivaFocusNode?.dispose();
    positivaTextController?.dispose();

    negativaFocusNode?.dispose();
    negativaTextController?.dispose();

    porcAsistFocusNode?.dispose();
    porcAsistTextController?.dispose();

    observacionesFocusNode?.dispose();
    observacionesTextController?.dispose();
  }
}
