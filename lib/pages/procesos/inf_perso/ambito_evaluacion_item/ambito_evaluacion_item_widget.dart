import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ambito_evaluacion_item_model.dart';
export 'ambito_evaluacion_item_model.dart';

class AmbitoEvaluacionItemWidget extends StatefulWidget {
  const AmbitoEvaluacionItemWidget({
    super.key,
    required this.codAmbitoPara,
    required this.nomAmbitoPara,
    required this.ciAluPar,
    required this.codCursoPar,
    required this.semePar,
    this.litPar,
    required this.ambitoRef,
    required this.categAmbito,
  });

  final int? codAmbitoPara;
  final String? nomAmbitoPara;
  final String? ciAluPar;
  final String? codCursoPar;
  final int? semePar;
  final String? litPar;
  final DocumentReference? ambitoRef;
  final int? categAmbito;

  @override
  State<AmbitoEvaluacionItemWidget> createState() =>
      _AmbitoEvaluacionItemWidgetState();
}

class _AmbitoEvaluacionItemWidgetState
    extends State<AmbitoEvaluacionItemWidget> {
  late AmbitoEvaluacionItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AmbitoEvaluacionItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 370.0,
          decoration: BoxDecoration(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget!.codAmbitoPara?.toString(),
                      'codAmbito',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  Text(
                    '.-',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                  Container(
                    width: 200.0,
                    decoration: BoxDecoration(),
                    child: Text(
                      valueOrDefault<String>(
                        widget!.nomAmbitoPara,
                        'nom_ambito',
                      ),
                      textAlign: TextAlign.justify,
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            font: GoogleFonts.roboto(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyLarge
                                .fontStyle,
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController ??=
                          FormFieldController<String>(
                        _model.dropDownValue ??= widget!.litPar,
                      ),
                      options: List<String>.from(['S', 'F', 'O', 'NO', 'N']),
                      optionLabels: [
                        'Siempre',
                        'Frecuent.',
                        'Ocacional',
                        'No Observ.',
                        'Nunca'
                      ],
                      onChanged: (val) async {
                        safeSetState(() => _model.dropDownValue = val);
                        if (_model.dropDownValue != null &&
                            _model.dropDownValue != '') {
                          if (widget!.semePar == 1) {
                            _model.resultBusqAmbitoSem1 =
                                await queryInfPersoRecordOnce(
                              queryBuilder: (infPersoRecord) => infPersoRecord
                                  .where(
                                    'rut_cole',
                                    isEqualTo: valueOrDefault(
                                        currentUserDocument?.rutCole, ''),
                                  )
                                  .where(
                                    'ci_alu',
                                    isEqualTo: widget!.ciAluPar,
                                  )
                                  .where(
                                    'codCurso',
                                    isEqualTo: widget!.codCursoPar,
                                  )
                                  .where(
                                    'cod_ambito',
                                    isEqualTo: widget!.codAmbitoPara,
                                  ),
                              singleRecord: true,
                            ).then((s) => s.firstOrNull);
                            if (_model.resultBusqAmbitoSem1 != null) {
                              await _model.resultBusqAmbitoSem1!.reference
                                  .update(createInfPersoRecordData(
                                litSem1: _model.dropDownValue,
                              ));
                            } else {
                              await InfPersoRecord.collection.doc().set({
                                ...createInfPersoRecordData(
                                  ciAlu: widget!.ciAluPar,
                                  codCurso: widget!.codCursoPar,
                                  codAmbito: widget!.codAmbitoPara,
                                  rutCole: valueOrDefault(
                                      currentUserDocument?.rutCole, ''),
                                  litSem1: _model.dropDownValue,
                                  lit12Listo: 1,
                                  ambitoRef: widget!.ambitoRef,
                                  categAmbito: widget!.categAmbito,
                                ),
                                ...mapToFirestore(
                                  {
                                    'fecha': FieldValue.serverTimestamp(),
                                  },
                                ),
                              });
                            }
                          } else {
                            _model.resultBusqAmbitoSem2 =
                                await queryInfPersoRecordOnce(
                              queryBuilder: (infPersoRecord) => infPersoRecord
                                  .where(
                                    'rut_cole',
                                    isEqualTo: valueOrDefault(
                                        currentUserDocument?.rutCole, ''),
                                  )
                                  .where(
                                    'ci_alu',
                                    isEqualTo: widget!.ciAluPar,
                                  )
                                  .where(
                                    'codCurso',
                                    isEqualTo: widget!.codCursoPar,
                                  )
                                  .where(
                                    'cod_ambito',
                                    isEqualTo: widget!.codAmbitoPara,
                                  ),
                              singleRecord: true,
                            ).then((s) => s.firstOrNull);
                            if (_model.resultBusqAmbitoSem2 != null) {
                              await _model.resultBusqAmbitoSem2!.reference
                                  .update(createInfPersoRecordData(
                                litSem2: _model.dropDownValue,
                                lit12Listo: 2,
                              ));
                            } else {
                              await InfPersoRecord.collection.doc().set({
                                ...createInfPersoRecordData(
                                  ciAlu: widget!.ciAluPar,
                                  codCurso: widget!.codCursoPar,
                                  codAmbito: widget!.codAmbitoPara,
                                  rutCole: valueOrDefault(
                                      currentUserDocument?.rutCole, ''),
                                  litSem2: _model.dropDownValue,
                                  ambitoRef: widget!.ambitoRef,
                                  categAmbito: widget!.categAmbito,
                                ),
                                ...mapToFirestore(
                                  {
                                    'fecha': FieldValue.serverTimestamp(),
                                  },
                                ),
                              });
                            }
                          }
                        } else {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('esta vacio'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                        }

                        safeSetState(() {});
                      },
                      width: 120.0,
                      height: 25.0,
                      textStyle:
                          FlutterFlowTheme.of(context).bodyMedium.override(
                                font: GoogleFonts.inter(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                      hintText: 'Literal',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      elevation: 2.0,
                      borderColor: FlutterFlowTheme.of(context).primaryText,
                      borderWidth: 1.0,
                      borderRadius: 8.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                      hidesUnderline: true,
                      isOverButton: false,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
