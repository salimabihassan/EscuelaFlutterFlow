import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// Registro de Profesores
class ProfRecord extends FirestoreRecord {
  ProfRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Nom_prof" field.
  String? _nomProf;
  String get nomProf => _nomProf ?? '';
  bool hasNomProf() => _nomProf != null;

  // "dir_prof" field.
  String? _dirProf;
  String get dirProf => _dirProf ?? '';
  bool hasDirProf() => _dirProf != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "ci_prof" field.
  String? _ciProf;
  String get ciProf => _ciProf ?? '';
  bool hasCiProf() => _ciProf != null;

  // "tlf_prof" field.
  String? _tlfProf;
  String get tlfProf => _tlfProf ?? '';
  bool hasTlfProf() => _tlfProf != null;

  // "borrado" field.
  int? _borrado;
  int get borrado => _borrado ?? 0;
  bool hasBorrado() => _borrado != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "rut_cole" field.
  String? _rutCole;
  String get rutCole => _rutCole ?? '';
  bool hasRutCole() => _rutCole != null;

  // "director" field.
  bool? _director;
  bool get director => _director ?? false;
  bool hasDirector() => _director != null;

  void _initializeFields() {
    _nomProf = snapshotData['Nom_prof'] as String?;
    _dirProf = snapshotData['dir_prof'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _ciProf = snapshotData['ci_prof'] as String?;
    _tlfProf = snapshotData['tlf_prof'] as String?;
    _borrado = castToType<int>(snapshotData['borrado']);
    _email = snapshotData['email'] as String?;
    _rutCole = snapshotData['rut_cole'] as String?;
    _director = snapshotData['director'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Prof');

  static Stream<ProfRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProfRecord.fromSnapshot(s));

  static Future<ProfRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProfRecord.fromSnapshot(s));

  static ProfRecord fromSnapshot(DocumentSnapshot snapshot) => ProfRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProfRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProfRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProfRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProfRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProfRecordData({
  String? nomProf,
  String? dirProf,
  DateTime? createdTime,
  String? ciProf,
  String? tlfProf,
  int? borrado,
  String? email,
  String? rutCole,
  bool? director,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Nom_prof': nomProf,
      'dir_prof': dirProf,
      'created_time': createdTime,
      'ci_prof': ciProf,
      'tlf_prof': tlfProf,
      'borrado': borrado,
      'email': email,
      'rut_cole': rutCole,
      'director': director,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProfRecordDocumentEquality implements Equality<ProfRecord> {
  const ProfRecordDocumentEquality();

  @override
  bool equals(ProfRecord? e1, ProfRecord? e2) {
    return e1?.nomProf == e2?.nomProf &&
        e1?.dirProf == e2?.dirProf &&
        e1?.createdTime == e2?.createdTime &&
        e1?.ciProf == e2?.ciProf &&
        e1?.tlfProf == e2?.tlfProf &&
        e1?.borrado == e2?.borrado &&
        e1?.email == e2?.email &&
        e1?.rutCole == e2?.rutCole &&
        e1?.director == e2?.director;
  }

  @override
  int hash(ProfRecord? e) => const ListEquality().hash([
        e?.nomProf,
        e?.dirProf,
        e?.createdTime,
        e?.ciProf,
        e?.tlfProf,
        e?.borrado,
        e?.email,
        e?.rutCole,
        e?.director
      ]);

  @override
  bool isValidKey(Object? o) => o is ProfRecord;
}
