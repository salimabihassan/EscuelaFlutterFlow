import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ColegioRecord extends FirestoreRecord {
  ColegioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ci_rep" field.
  String? _ciRep;
  String get ciRep => _ciRep ?? '';
  bool hasCiRep() => _ciRep != null;

  // "rut_cole" field.
  String? _rutCole;
  String get rutCole => _rutCole ?? '';
  bool hasRutCole() => _rutCole != null;

  // "dir_cole" field.
  String? _dirCole;
  String get dirCole => _dirCole ?? '';
  bool hasDirCole() => _dirCole != null;

  // "logo_cole" field.
  String? _logoCole;
  String get logoCole => _logoCole ?? '';
  bool hasLogoCole() => _logoCole != null;

  // "tlf_cole" field.
  String? _tlfCole;
  String get tlfCole => _tlfCole ?? '';
  bool hasTlfCole() => _tlfCole != null;

  // "nom_cole" field.
  String? _nomCole;
  String get nomCole => _nomCole ?? '';
  bool hasNomCole() => _nomCole != null;

  // "fecha_creacion" field.
  DateTime? _fechaCreacion;
  DateTime? get fechaCreacion => _fechaCreacion;
  bool hasFechaCreacion() => _fechaCreacion != null;

  // "preescolar" field.
  bool? _preescolar;
  bool get preescolar => _preescolar ?? false;
  bool hasPreescolar() => _preescolar != null;

  // "basica" field.
  bool? _basica;
  bool get basica => _basica ?? false;
  bool hasBasica() => _basica != null;

  // "media" field.
  bool? _media;
  bool get media => _media ?? false;
  bool hasMedia() => _media != null;

  void _initializeFields() {
    _ciRep = snapshotData['ci_rep'] as String?;
    _rutCole = snapshotData['rut_cole'] as String?;
    _dirCole = snapshotData['dir_cole'] as String?;
    _logoCole = snapshotData['logo_cole'] as String?;
    _tlfCole = snapshotData['tlf_cole'] as String?;
    _nomCole = snapshotData['nom_cole'] as String?;
    _fechaCreacion = snapshotData['fecha_creacion'] as DateTime?;
    _preescolar = snapshotData['preescolar'] as bool?;
    _basica = snapshotData['basica'] as bool?;
    _media = snapshotData['media'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Colegio');

  static Stream<ColegioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ColegioRecord.fromSnapshot(s));

  static Future<ColegioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ColegioRecord.fromSnapshot(s));

  static ColegioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ColegioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ColegioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ColegioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ColegioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ColegioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createColegioRecordData({
  String? ciRep,
  String? rutCole,
  String? dirCole,
  String? logoCole,
  String? tlfCole,
  String? nomCole,
  DateTime? fechaCreacion,
  bool? preescolar,
  bool? basica,
  bool? media,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ci_rep': ciRep,
      'rut_cole': rutCole,
      'dir_cole': dirCole,
      'logo_cole': logoCole,
      'tlf_cole': tlfCole,
      'nom_cole': nomCole,
      'fecha_creacion': fechaCreacion,
      'preescolar': preescolar,
      'basica': basica,
      'media': media,
    }.withoutNulls,
  );

  return firestoreData;
}

class ColegioRecordDocumentEquality implements Equality<ColegioRecord> {
  const ColegioRecordDocumentEquality();

  @override
  bool equals(ColegioRecord? e1, ColegioRecord? e2) {
    return e1?.ciRep == e2?.ciRep &&
        e1?.rutCole == e2?.rutCole &&
        e1?.dirCole == e2?.dirCole &&
        e1?.logoCole == e2?.logoCole &&
        e1?.tlfCole == e2?.tlfCole &&
        e1?.nomCole == e2?.nomCole &&
        e1?.fechaCreacion == e2?.fechaCreacion &&
        e1?.preescolar == e2?.preescolar &&
        e1?.basica == e2?.basica &&
        e1?.media == e2?.media;
  }

  @override
  int hash(ColegioRecord? e) => const ListEquality().hash([
        e?.ciRep,
        e?.rutCole,
        e?.dirCole,
        e?.logoCole,
        e?.tlfCole,
        e?.nomCole,
        e?.fechaCreacion,
        e?.preescolar,
        e?.basica,
        e?.media
      ]);

  @override
  bool isValidKey(Object? o) => o is ColegioRecord;
}
