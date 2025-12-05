import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'inf_notas_parcial1_sem_por_alumno_widget.dart'
    show InfNotasParcial1SemPorAlumnoWidget;
import 'package:styled_divider/styled_divider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InfNotasParcial1SemPorAlumnoModel
    extends FlutterFlowModel<InfNotasParcial1SemPorAlumnoWidget> {
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

  List<String> asignaturasRaw = [];
  void addToAsignaturasRaw(String item) => asignaturasRaw.add(item);
  void removeFromAsignaturasRaw(String item) => asignaturasRaw.remove(item);
  void removeAtIndexFromAsignaturasRaw(int index) =>
      asignaturasRaw.removeAt(index);
  void insertAtIndexInAsignaturasRaw(int index, String item) =>
      asignaturasRaw.insert(index, item);
  void updateAsignaturasRawAtIndex(int index, Function(String) updateFn) =>
      asignaturasRaw[index] = updateFn(asignaturasRaw[index]);

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
  List<NotasRecord>? notasList;
  // Stores action output result for [Firestore Query - Query a collection] action in Imp_Inf_Parcial widget.
  List<AsignaturaRecord>? asignaturasList;
  // Stores action output result for [Custom Action - buildReportHTMLSemestre1] action in Imp_Inf_Parcial widget.
  String? htmlContent;
  // Stores action output result for [Custom Action - generatePDFFromHTML] action in Imp_Inf_Parcial widget.
  FFUploadedFile? resulGeneratePDFFromHTML;

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

    porcAsistFocusNode?.dispose();
    porcAsistTextController?.dispose();

    observacionesFocusNode?.dispose();
    observacionesTextController?.dispose();
  }
}
