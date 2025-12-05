import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'foto_perfil_widget.dart' show FotoPerfilWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FotoPerfilModel extends FlutterFlowModel<FotoPerfilWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading_uploadDataFer = false;
  FFUploadedFile uploadedLocalFile_uploadDataFer =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataFer = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
