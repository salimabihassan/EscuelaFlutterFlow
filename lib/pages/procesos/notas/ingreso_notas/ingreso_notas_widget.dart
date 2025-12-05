import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/procesos/notas/nota1/nota1_widget.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:styled_divider/styled_divider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ingreso_notas_model.dart';
export 'ingreso_notas_model.dart';

class IngresoNotasWidget extends StatefulWidget {
  const IngresoNotasWidget({super.key});

  static String routeName = 'Ingreso_Notas';
  static String routePath = '/ingreso_notas';

  @override
  State<IngresoNotasWidget> createState() => _IngresoNotasWidgetState();
}

class _IngresoNotasWidgetState extends State<IngresoNotasWidget> {
  late IngresoNotasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IngresoNotasModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Container(
              width: 400.0,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.safePop();
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      size: 35.0,
                    ),
                  ),
                  Text(
                    'Registrar Notas',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          font: GoogleFonts.interTight(
                            fontWeight: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .headlineMedium
                                .fontStyle,
                          ),
                          color: Colors.white,
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .fontStyle,
                        ),
                  ),
                ].divide(SizedBox(width: 60.0)),
              ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  Theme.of(context).brightness == Brightness.dark
                      ? 'assets/images/fondo_nocturno.png'
                      : 'assets/images/Captura_de_pantalla_2025-08-04_161739.png',
                ).image,
              ),
            ),
            child: Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          width: 370.0,
                          height: 150.0,
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: FlutterFlowTheme.of(context).colorCard,
                              elevation: 8.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 5.0, 0.0, 0.0),
                                      child: Text(
                                        'Seleccione los Datos del Curso',
                                        style: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              font: GoogleFonts.interTight(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .fontStyle,
                                              ),
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 10.0, 5.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          AuthUserStreamWidget(
                                            builder: (context) => StreamBuilder<
                                                List<CursoRecord>>(
                                              stream: queryCursoRecord(
                                                queryBuilder: (cursoRecord) =>
                                                    cursoRecord
                                                        .where(
                                                          'ci_prof',
                                                          isEqualTo: valueOrDefault(
                                                              currentUserDocument
                                                                  ?.ciProf,
                                                              ''),
                                                        )
                                                        .where(
                                                          'rut_cole',
                                                          isEqualTo: valueOrDefault(
                                                              currentUserDocument
                                                                  ?.rutCole,
                                                              ''),
                                                        )
                                                        .where(
                                                          'activo',
                                                          isEqualTo: 1,
                                                        )
                                                        .orderBy('codcurso'),
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<CursoRecord>
                                                    codCursoCursoRecordList =
                                                    snapshot.data!;

                                                return FlutterFlowDropDown<
                                                    String>(
                                                  controller: _model
                                                          .codCursoValueController ??=
                                                      FormFieldController<
                                                          String>(null),
                                                  options:
                                                      codCursoCursoRecordList
                                                          .map(
                                                              (e) => e.codcurso)
                                                          .toList(),
                                                  onChanged: (val) async {
                                                    safeSetState(() => _model
                                                        .codCursoValue = val);
                                                    _model.resultDropdownCodcurso =
                                                        await queryCursoRecordOnce(
                                                      queryBuilder:
                                                          (cursoRecord) =>
                                                              cursoRecord
                                                                  .where(
                                                                    'codcurso',
                                                                    isEqualTo:
                                                                        _model
                                                                            .codCursoValue,
                                                                  )
                                                                  .where(
                                                                    'rut_cole',
                                                                    isEqualTo: valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.rutCole,
                                                                        ''),
                                                                  ),
                                                      singleRecord: true,
                                                    ).then((s) =>
                                                            s.firstOrNull);
                                                    _model.cursoAsign = _model
                                                        .resultDropdownCodcurso
                                                        ?.grado;
                                                    _model.secCurso = _model
                                                        .resultDropdownCodcurso
                                                        ?.sec;
                                                    _model.periodo = _model
                                                        .resultDropdownCodcurso
                                                        ?.periodo;
                                                    safeSetState(() {});

                                                    safeSetState(() {});
                                                  },
                                                  width: 170.0,
                                                  height: 30.0,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  hintText: 'Código Curso ',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24.0,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2.0,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  borderWidth: 0.0,
                                                  borderRadius: 8.0,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                );
                                              },
                                            ),
                                          ),
                                          FlutterFlowDropDown<int>(
                                            controller: _model
                                                    .semestreValueController ??=
                                                FormFieldController<int>(null),
                                            options: List<int>.from([1, 2]),
                                            optionLabels: [
                                              '1° Semestre',
                                              '2° Semestre'
                                            ],
                                            onChanged: (val) => safeSetState(
                                                () =>
                                                    _model.semestreValue = val),
                                            width: 165.0,
                                            height: 30.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      fontSize: 18.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                            hintText: 'Semestre',
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 2.0,
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            borderWidth: 0.0,
                                            borderRadius: 8.0,
                                            margin:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            hidesUnderline: true,
                                            isOverButton: false,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                          ),
                                        ].divide(SizedBox(width: 8.0)),
                                      ),
                                    ),
                                    if ((_model.cursoAsign == 1) &&
                                        (_model.semestreValue != null))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 0.0),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => StreamBuilder<
                                              List<AsignaturaRecord>>(
                                            stream: queryAsignaturaRecord(
                                              queryBuilder:
                                                  (asignaturaRecord) =>
                                                      asignaturaRecord
                                                          .where(
                                                            'rut_cole',
                                                            isEqualTo: valueOrDefault(
                                                                currentUserDocument
                                                                    ?.rutCole,
                                                                ''),
                                                          )
                                                          .where(
                                                            'primeroB',
                                                            isEqualTo: true,
                                                          )
                                                          .orderBy('cod_asig'),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<AsignaturaRecord>
                                                  asigNota1AsignaturaRecordList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<int>(
                                                controller: _model
                                                        .asigNota1ValueController ??=
                                                    FormFieldController<int>(
                                                        null),
                                                options: List<int>.from(
                                                    asigNota1AsignaturaRecordList
                                                        .map((e) => e.codAsig)
                                                        .toList()),
                                                optionLabels:
                                                    asigNota1AsignaturaRecordList
                                                        .map((e) => e.nomAsig)
                                                        .toList(),
                                                onChanged: (val) async {
                                                  safeSetState(() => _model
                                                      .asigNota1Value = val);
                                                  _model.codAsig =
                                                      _model.asigNota1Value;
                                                  safeSetState(() {});
                                                  _model.asigRefPageState =
                                                      asigNota1AsignaturaRecordList
                                                          .firstOrNull
                                                          ?.reference;
                                                  safeSetState(() {});
                                                  _model.nomAsigPageState =
                                                      asigNota1AsignaturaRecordList
                                                          .firstOrNull?.nomAsig;
                                                  safeSetState(() {});
                                                },
                                                width: 360.0,
                                                height: 30.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                hintText: 'Asignatura',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    if ((_model.cursoAsign == 2) &&
                                        (_model.semestreValue != null))
                                      Expanded(
                                        child: AuthUserStreamWidget(
                                          builder: (context) => StreamBuilder<
                                              List<AsignaturaRecord>>(
                                            stream: queryAsignaturaRecord(
                                              queryBuilder:
                                                  (asignaturaRecord) =>
                                                      asignaturaRecord
                                                          .where(
                                                            'rut_cole',
                                                            isEqualTo: valueOrDefault(
                                                                currentUserDocument
                                                                    ?.rutCole,
                                                                ''),
                                                          )
                                                          .where(
                                                            'segundoB',
                                                            isEqualTo: true,
                                                          )
                                                          .orderBy('cod_asig'),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<AsignaturaRecord>
                                                  asigNota2AsignaturaRecordList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<int>(
                                                controller: _model
                                                        .asigNota2ValueController ??=
                                                    FormFieldController<int>(
                                                        null),
                                                options: List<int>.from(
                                                    asigNota2AsignaturaRecordList
                                                        .map((e) => e.codAsig)
                                                        .toList()),
                                                optionLabels:
                                                    asigNota2AsignaturaRecordList
                                                        .map((e) => e.nomAsig)
                                                        .toList(),
                                                onChanged: (val) async {
                                                  safeSetState(() => _model
                                                      .asigNota2Value = val);
                                                  _model.codAsig =
                                                      _model.asigNota2Value;
                                                  safeSetState(() {});
                                                  _model.asigRefPageState =
                                                      asigNota2AsignaturaRecordList
                                                          .firstOrNull
                                                          ?.reference;
                                                  safeSetState(() {});
                                                  _model.nomAsigPageState =
                                                      asigNota2AsignaturaRecordList
                                                          .firstOrNull?.nomAsig;
                                                  safeSetState(() {});
                                                },
                                                width: 360.0,
                                                height: 30.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                hintText: 'Asignatura',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    if ((_model.cursoAsign == 3) &&
                                        (_model.semestreValue != null))
                                      Expanded(
                                        child: AuthUserStreamWidget(
                                          builder: (context) => StreamBuilder<
                                              List<AsignaturaRecord>>(
                                            stream: queryAsignaturaRecord(
                                              queryBuilder:
                                                  (asignaturaRecord) =>
                                                      asignaturaRecord
                                                          .where(
                                                            'rut_cole',
                                                            isEqualTo: valueOrDefault(
                                                                currentUserDocument
                                                                    ?.rutCole,
                                                                ''),
                                                          )
                                                          .where(
                                                            'terceroB',
                                                            isEqualTo: true,
                                                          )
                                                          .orderBy('cod_asig'),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<AsignaturaRecord>
                                                  asigNota3AsignaturaRecordList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<int>(
                                                controller: _model
                                                        .asigNota3ValueController ??=
                                                    FormFieldController<int>(
                                                        null),
                                                options: List<int>.from(
                                                    asigNota3AsignaturaRecordList
                                                        .map((e) => e.codAsig)
                                                        .toList()),
                                                optionLabels:
                                                    asigNota3AsignaturaRecordList
                                                        .map((e) => e.nomAsig)
                                                        .toList(),
                                                onChanged: (val) async {
                                                  safeSetState(() => _model
                                                      .asigNota3Value = val);
                                                  _model.codAsig =
                                                      _model.asigNota3Value;
                                                  safeSetState(() {});
                                                  _model.asigRefPageState =
                                                      asigNota3AsignaturaRecordList
                                                          .firstOrNull
                                                          ?.reference;
                                                  safeSetState(() {});
                                                  _model.nomAsigPageState =
                                                      asigNota3AsignaturaRecordList
                                                          .firstOrNull?.nomAsig;
                                                  safeSetState(() {});
                                                },
                                                width: 360.0,
                                                height: 30.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                hintText: 'Asignatura',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    if ((_model.cursoAsign == 4) &&
                                        (_model.semestreValue != null))
                                      Expanded(
                                        child: AuthUserStreamWidget(
                                          builder: (context) => StreamBuilder<
                                              List<AsignaturaRecord>>(
                                            stream: queryAsignaturaRecord(
                                              queryBuilder:
                                                  (asignaturaRecord) =>
                                                      asignaturaRecord
                                                          .where(
                                                            'rut_cole',
                                                            isEqualTo: valueOrDefault(
                                                                currentUserDocument
                                                                    ?.rutCole,
                                                                ''),
                                                          )
                                                          .where(
                                                            'cuartoB',
                                                            isEqualTo: true,
                                                          )
                                                          .orderBy('cod_asig'),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<AsignaturaRecord>
                                                  asigNota4AsignaturaRecordList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<int>(
                                                controller: _model
                                                        .asigNota4ValueController ??=
                                                    FormFieldController<int>(
                                                        null),
                                                options: List<int>.from(
                                                    asigNota4AsignaturaRecordList
                                                        .map((e) => e.codAsig)
                                                        .toList()),
                                                optionLabels:
                                                    asigNota4AsignaturaRecordList
                                                        .map((e) => e.nomAsig)
                                                        .toList(),
                                                onChanged: (val) async {
                                                  safeSetState(() => _model
                                                      .asigNota4Value = val);
                                                  _model.codAsig =
                                                      _model.asigNota4Value;
                                                  safeSetState(() {});
                                                  _model.asigRefPageState =
                                                      asigNota4AsignaturaRecordList
                                                          .firstOrNull
                                                          ?.reference;
                                                  safeSetState(() {});
                                                  _model.nomAsigPageState =
                                                      asigNota4AsignaturaRecordList
                                                          .firstOrNull?.nomAsig;
                                                  safeSetState(() {});
                                                },
                                                width: 360.0,
                                                height: 30.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                hintText: 'Asignatura',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    if ((_model.cursoAsign == 5) &&
                                        (_model.semestreValue != null))
                                      Expanded(
                                        child: AuthUserStreamWidget(
                                          builder: (context) => StreamBuilder<
                                              List<AsignaturaRecord>>(
                                            stream: queryAsignaturaRecord(
                                              queryBuilder:
                                                  (asignaturaRecord) =>
                                                      asignaturaRecord
                                                          .where(
                                                            'rut_cole',
                                                            isEqualTo: valueOrDefault(
                                                                currentUserDocument
                                                                    ?.rutCole,
                                                                ''),
                                                          )
                                                          .where(
                                                            'QuintoB',
                                                            isEqualTo: true,
                                                          )
                                                          .orderBy('cod_asig'),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<AsignaturaRecord>
                                                  asigNota5AsignaturaRecordList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<int>(
                                                controller: _model
                                                        .asigNota5ValueController ??=
                                                    FormFieldController<int>(
                                                        null),
                                                options: List<int>.from(
                                                    asigNota5AsignaturaRecordList
                                                        .map((e) => e.codAsig)
                                                        .toList()),
                                                optionLabels:
                                                    asigNota5AsignaturaRecordList
                                                        .map((e) => e.nomAsig)
                                                        .toList(),
                                                onChanged: (val) async {
                                                  safeSetState(() => _model
                                                      .asigNota5Value = val);
                                                  _model.codAsig =
                                                      _model.asigNota5Value;
                                                  safeSetState(() {});
                                                  _model.asigRefPageState =
                                                      asigNota5AsignaturaRecordList
                                                          .firstOrNull
                                                          ?.reference;
                                                  safeSetState(() {});
                                                  _model.nomAsigPageState =
                                                      asigNota5AsignaturaRecordList
                                                          .firstOrNull?.nomAsig;
                                                  safeSetState(() {});
                                                },
                                                width: 360.0,
                                                height: 30.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                hintText: 'Asignatura',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    if ((_model.cursoAsign == 6) &&
                                        (_model.semestreValue != null))
                                      Expanded(
                                        child: AuthUserStreamWidget(
                                          builder: (context) => StreamBuilder<
                                              List<AsignaturaRecord>>(
                                            stream: queryAsignaturaRecord(
                                              queryBuilder:
                                                  (asignaturaRecord) =>
                                                      asignaturaRecord
                                                          .where(
                                                            'rut_cole',
                                                            isEqualTo: valueOrDefault(
                                                                currentUserDocument
                                                                    ?.rutCole,
                                                                ''),
                                                          )
                                                          .where(
                                                            'sextoB',
                                                            isEqualTo: true,
                                                          )
                                                          .orderBy('cod_asig'),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<AsignaturaRecord>
                                                  asigNota6AsignaturaRecordList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<int>(
                                                controller: _model
                                                        .asigNota6ValueController ??=
                                                    FormFieldController<int>(
                                                        null),
                                                options: List<int>.from(
                                                    asigNota6AsignaturaRecordList
                                                        .map((e) => e.codAsig)
                                                        .toList()),
                                                optionLabels:
                                                    asigNota6AsignaturaRecordList
                                                        .map((e) => e.nomAsig)
                                                        .toList(),
                                                onChanged: (val) async {
                                                  safeSetState(() => _model
                                                      .asigNota6Value = val);
                                                  _model.codAsig =
                                                      _model.asigNota6Value;
                                                  safeSetState(() {});
                                                  _model.asigRefPageState =
                                                      asigNota6AsignaturaRecordList
                                                          .firstOrNull
                                                          ?.reference;
                                                  safeSetState(() {});
                                                  _model.nomAsigPageState =
                                                      asigNota6AsignaturaRecordList
                                                          .firstOrNull?.nomAsig;
                                                  safeSetState(() {});
                                                },
                                                width: 360.0,
                                                height: 30.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                hintText: 'Asignatura',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    if ((_model.cursoAsign == 7) &&
                                        (_model.semestreValue != null))
                                      Expanded(
                                        child: AuthUserStreamWidget(
                                          builder: (context) => StreamBuilder<
                                              List<AsignaturaRecord>>(
                                            stream: queryAsignaturaRecord(
                                              queryBuilder:
                                                  (asignaturaRecord) =>
                                                      asignaturaRecord
                                                          .where(
                                                            'rut_cole',
                                                            isEqualTo: valueOrDefault(
                                                                currentUserDocument
                                                                    ?.rutCole,
                                                                ''),
                                                          )
                                                          .where(
                                                            'septimoB',
                                                            isEqualTo: true,
                                                          )
                                                          .orderBy('cod_asig'),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<AsignaturaRecord>
                                                  asigNota7AsignaturaRecordList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<int>(
                                                controller: _model
                                                        .asigNota7ValueController ??=
                                                    FormFieldController<int>(
                                                        null),
                                                options: List<int>.from(
                                                    asigNota7AsignaturaRecordList
                                                        .map((e) => e.codAsig)
                                                        .toList()),
                                                optionLabels:
                                                    asigNota7AsignaturaRecordList
                                                        .map((e) => e.nomAsig)
                                                        .toList(),
                                                onChanged: (val) async {
                                                  safeSetState(() => _model
                                                      .asigNota7Value = val);
                                                  _model.codAsig =
                                                      _model.asigNota7Value;
                                                  safeSetState(() {});
                                                  _model.asigRefPageState =
                                                      asigNota7AsignaturaRecordList
                                                          .firstOrNull
                                                          ?.reference;
                                                  safeSetState(() {});
                                                  _model.nomAsigPageState =
                                                      asigNota7AsignaturaRecordList
                                                          .firstOrNull?.nomAsig;
                                                  safeSetState(() {});
                                                },
                                                width: 360.0,
                                                height: 30.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                hintText: 'Asignatura',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    if ((_model.cursoAsign == 8) &&
                                        (_model.semestreValue != null))
                                      Expanded(
                                        child: AuthUserStreamWidget(
                                          builder: (context) => StreamBuilder<
                                              List<AsignaturaRecord>>(
                                            stream: queryAsignaturaRecord(
                                              queryBuilder:
                                                  (asignaturaRecord) =>
                                                      asignaturaRecord
                                                          .where(
                                                            'rut_cole',
                                                            isEqualTo: valueOrDefault(
                                                                currentUserDocument
                                                                    ?.rutCole,
                                                                ''),
                                                          )
                                                          .where(
                                                            'octavoB',
                                                            isEqualTo: true,
                                                          )
                                                          .orderBy('cod_asig'),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<AsignaturaRecord>
                                                  asigNota8AsignaturaRecordList =
                                                  snapshot.data!;

                                              return FlutterFlowDropDown<int>(
                                                controller: _model
                                                        .asigNota8ValueController ??=
                                                    FormFieldController<int>(
                                                        null),
                                                options: List<int>.from(
                                                    asigNota8AsignaturaRecordList
                                                        .map((e) => e.codAsig)
                                                        .toList()),
                                                optionLabels:
                                                    asigNota8AsignaturaRecordList
                                                        .map((e) => e.nomAsig)
                                                        .toList(),
                                                onChanged: (val) async {
                                                  safeSetState(() => _model
                                                      .asigNota8Value = val);
                                                  _model.codAsig =
                                                      _model.asigNota8Value;
                                                  safeSetState(() {});
                                                  _model.asigRefPageState =
                                                      asigNota8AsignaturaRecordList
                                                          .firstOrNull
                                                          ?.reference;
                                                  safeSetState(() {});
                                                  _model.nomAsigPageState =
                                                      asigNota8AsignaturaRecordList
                                                          .firstOrNull?.nomAsig;
                                                  safeSetState(() {});
                                                },
                                                width: 360.0,
                                                height: 30.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                hintText: 'Asignatura',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                  ].divide(SizedBox(height: 10.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Container(
                            width: 450.0,
                            decoration: BoxDecoration(),
                            child: Visibility(
                              visible: _model.codAsig != null,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        30.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Rut Alumno',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        30.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Nombre Alumno',
                                      style: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .fontStyle,
                                            ),
                                            fontSize: 20.0,
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .fontStyle,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Container(
                            width: 370.0,
                            height: 420.0,
                            decoration: BoxDecoration(),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (_model.codAsig != null)
                                    AuthUserStreamWidget(
                                      builder: (context) =>
                                          StreamBuilder<List<AlumnoRecord>>(
                                        stream: queryAlumnoRecord(
                                          queryBuilder: (alumnoRecord) =>
                                              alumnoRecord
                                                  .where(
                                                    'rut_cole',
                                                    isEqualTo: valueOrDefault(
                                                        currentUserDocument
                                                            ?.rutCole,
                                                        ''),
                                                  )
                                                  .where(
                                                    'grado',
                                                    isEqualTo:
                                                        _model.cursoAsign,
                                                  )
                                                  .where(
                                                    'borrado',
                                                    isEqualTo: 0,
                                                  )
                                                  .where(
                                                    'retirado',
                                                    isEqualTo: 0,
                                                  )
                                                  .where(
                                                    'seccion',
                                                    isEqualTo: _model.secCurso,
                                                  )
                                                  .where(
                                                    'periodo',
                                                    isEqualTo: _model.periodo,
                                                  )
                                                  .orderBy('nom_alu'),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<AlumnoRecord>
                                              listViewAlumnoRecordList =
                                              snapshot.data!;

                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            primary: false,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount:
                                                listViewAlumnoRecordList.length,
                                            itemBuilder:
                                                (context, listViewIndex) {
                                              final listViewAlumnoRecord =
                                                  listViewAlumnoRecordList[
                                                      listViewIndex];
                                              return StreamBuilder<
                                                  List<NotasRecord>>(
                                                stream: queryNotasRecord(
                                                  queryBuilder: (notasRecord) =>
                                                      notasRecord
                                                          .where(
                                                            'rut_cole',
                                                            isEqualTo: valueOrDefault(
                                                                currentUserDocument
                                                                    ?.rutCole,
                                                                ''),
                                                          )
                                                          .where(
                                                            'cod_asig',
                                                            isEqualTo:
                                                                _model.codAsig,
                                                          )
                                                          .where(
                                                            'semestre',
                                                            isEqualTo: _model
                                                                .semestreValue,
                                                          )
                                                          .where(
                                                            'cod_curso',
                                                            isEqualTo: _model
                                                                .codCursoValue,
                                                          )
                                                          .where(
                                                            'ci_alu',
                                                            isEqualTo:
                                                                listViewAlumnoRecord
                                                                    .ciAlu,
                                                          ),
                                                  singleRecord: true,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<NotasRecord>
                                                      columnNotasRecordList =
                                                      snapshot.data!;
                                                  final columnNotasRecord =
                                                      columnNotasRecordList
                                                              .isNotEmpty
                                                          ? columnNotasRecordList
                                                              .first
                                                          : null;

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                              child: Container(
                                                                width: 120.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Text(
                                                                  functions.formatRUT(
                                                                      listViewAlumnoRecord
                                                                          .ciAlu)!,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                              child: Container(
                                                                width: 180.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Text(
                                                                  listViewAlumnoRecord
                                                                      .nomAlu,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Builder(
                                                              builder:
                                                                  (context) =>
                                                                      InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  if (_model
                                                                          .codAsig !=
                                                                      null) {
                                                                    _model.resulCodAsiNomAsig =
                                                                        await queryAsignaturaRecordOnce(
                                                                      queryBuilder: (asignaturaRecord) => asignaturaRecord
                                                                          .where(
                                                                            'cod_asig',
                                                                            isEqualTo:
                                                                                _model.codAsig,
                                                                          )
                                                                          .where(
                                                                            'rut_cole',
                                                                            isEqualTo:
                                                                                valueOrDefault(currentUserDocument?.rutCole, ''),
                                                                          ),
                                                                      singleRecord:
                                                                          true,
                                                                    ).then((s) =>
                                                                            s.firstOrNull);
                                                                    _model.resultNota1SemestreIcon =
                                                                        await queryNotasRecordOnce(
                                                                      queryBuilder: (notasRecord) => notasRecord
                                                                          .where(
                                                                            'rut_cole',
                                                                            isEqualTo:
                                                                                valueOrDefault(currentUserDocument?.rutCole, ''),
                                                                          )
                                                                          .where(
                                                                            'ci_alu',
                                                                            isEqualTo:
                                                                                listViewAlumnoRecord.ciAlu,
                                                                          )
                                                                          .where(
                                                                            'cod_curso',
                                                                            isEqualTo:
                                                                                _model.codCursoValue,
                                                                          )
                                                                          .where(
                                                                            'cod_asig',
                                                                            isEqualTo:
                                                                                _model.codAsig,
                                                                          )
                                                                          .where(
                                                                            'semestre',
                                                                            isEqualTo:
                                                                                _model.semestreValue,
                                                                          ),
                                                                    );
                                                                    if (_model.resultNota1SemestreIcon !=
                                                                            null &&
                                                                        (_model.resultNota1SemestreIcon)!
                                                                            .isNotEmpty) {
                                                                      await showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (dialogContext) {
                                                                          return Dialog(
                                                                            elevation:
                                                                                0,
                                                                            insetPadding:
                                                                                EdgeInsets.zero,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () {
                                                                                FocusScope.of(dialogContext).unfocus();
                                                                                FocusManager.instance.primaryFocus?.unfocus();
                                                                              },
                                                                              child: Nota1Widget(
                                                                                codCurso: _model.codCursoValue,
                                                                                rutAlu: listViewAlumnoRecord.ciAlu,
                                                                                codAsig: _model.resulCodAsiNomAsig?.codAsig,
                                                                                nota1: _model.resultNota1SemestreIcon?.firstOrNull?.nota1,
                                                                                nota2: _model.resultNota1SemestreIcon?.firstOrNull?.nota2,
                                                                                nota3: _model.resultNota1SemestreIcon?.firstOrNull?.nota3,
                                                                                nota4: _model.resultNota1SemestreIcon?.firstOrNull?.nota4,
                                                                                nota5: _model.resultNota1SemestreIcon?.firstOrNull?.nota5,
                                                                                nota6: _model.resultNota1SemestreIcon?.firstOrNull?.nota6,
                                                                                nota7: _model.resultNota1SemestreIcon?.firstOrNull?.nota7,
                                                                                nota8: _model.resultNota1SemestreIcon?.firstOrNull?.nota8,
                                                                                nota9: _model.resultNota1SemestreIcon?.firstOrNull?.nota9,
                                                                                notaProm: _model.resultNota1SemestreIcon?.firstOrNull?.notaPromedio,
                                                                                nota10: _model.resultNota1SemestreIcon?.firstOrNull?.nota10,
                                                                                aluParRef: listViewAlumnoRecord.reference,
                                                                                asigParRef: _model.asigRefPageState,
                                                                                semestre: _model.semestreValue!,
                                                                                nomAsigPar: _model.resulCodAsiNomAsig!.nomAsig,
                                                                                nomAluPar: listViewAlumnoRecord.nomAlu,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      );
                                                                    } else {
                                                                      await showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (dialogContext) {
                                                                          return Dialog(
                                                                            elevation:
                                                                                0,
                                                                            insetPadding:
                                                                                EdgeInsets.zero,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () {
                                                                                FocusScope.of(dialogContext).unfocus();
                                                                                FocusManager.instance.primaryFocus?.unfocus();
                                                                              },
                                                                              child: Nota1Widget(
                                                                                codCurso: _model.codCursoValue,
                                                                                rutAlu: listViewAlumnoRecord.ciAlu,
                                                                                codAsig: _model.resulCodAsiNomAsig?.codAsig,
                                                                                aluParRef: listViewAlumnoRecord.reference,
                                                                                asigParRef: _model.asigRefPageState,
                                                                                semestre: _model.semestreValue!,
                                                                                nomAsigPar: _model.resulCodAsiNomAsig!.nomAsig,
                                                                                nomAluPar: listViewAlumnoRecord.nomAlu,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      );
                                                                    }
                                                                  } else {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('Debe Escoger la Asignatura '),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                              child: Text('Ok'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    );
                                                                  }

                                                                  safeSetState(
                                                                      () {});
                                                                },
                                                                child: Icon(
                                                                  Icons.update,
                                                                  color: columnNotasRecord !=
                                                                          null
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  size: 24.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 300.0,
                                                        child: StyledDivider(
                                                          height: 1.0,
                                                          thickness: 1.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
                                                          lineStyle:
                                                              DividerLineStyle
                                                                  .dashed,
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                },
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
