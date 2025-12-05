import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlumnoRecord extends FirestoreRecord {
  AlumnoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ci_alu" field.
  String? _ciAlu;
  String get ciAlu => _ciAlu ?? '';
  bool hasCiAlu() => _ciAlu != null;

  // "nom_alu" field.
  String? _nomAlu;
  String get nomAlu => _nomAlu ?? '';
  bool hasNomAlu() => _nomAlu != null;

  // "grado" field.
  int? _grado;
  int get grado => _grado ?? 0;
  bool hasGrado() => _grado != null;

  // "seccion" field.
  String? _seccion;
  String get seccion => _seccion ?? '';
  bool hasSeccion() => _seccion != null;

  // "periodo" field.
  int? _periodo;
  int get periodo => _periodo ?? 0;
  bool hasPeriodo() => _periodo != null;

  // "sexo" field.
  String? _sexo;
  String get sexo => _sexo ?? '';
  bool hasSexo() => _sexo != null;

  // "retirado" field.
  int? _retirado;
  int get retirado => _retirado ?? 0;
  bool hasRetirado() => _retirado != null;

  // "borrado" field.
  int? _borrado;
  int get borrado => _borrado ?? 0;
  bool hasBorrado() => _borrado != null;

  // "rut_cole" field.
  String? _rutCole;
  String get rutCole => _rutCole ?? '';
  bool hasRutCole() => _rutCole != null;

  void _initializeFields() {
    _ciAlu = snapshotData['ci_alu'] as String?;
    _nomAlu = snapshotData['nom_alu'] as String?;
    _grado = castToType<int>(snapshotData['grado']);
    _seccion = snapshotData['seccion'] as String?;
    _periodo = castToType<int>(snapshotData['periodo']);
    _sexo = snapshotData['sexo'] as String?;
    _retirado = castToType<int>(snapshotData['retirado']);
    _borrado = castToType<int>(snapshotData['borrado']);
    _rutCole = snapshotData['rut_cole'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alumno');

  static Stream<AlumnoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlumnoRecord.fromSnapshot(s));

  static Future<AlumnoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AlumnoRecord.fromSnapshot(s));

  static AlumnoRecord fromSnapshot(DocumentSnapshot snapshot) => AlumnoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlumnoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlumnoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlumnoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlumnoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlumnoRecordData({
  String? ciAlu,
  String? nomAlu,
  int? grado,
  String? seccion,
  int? periodo,
  String? sexo,
  int? retirado,
  int? borrado,
  String? rutCole,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ci_alu': ciAlu,
      'nom_alu': nomAlu,
      'grado': grado,
      'seccion': seccion,
      'periodo': periodo,
      'sexo': sexo,
      'retirado': retirado,
      'borrado': borrado,
      'rut_cole': rutCole,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlumnoRecordDocumentEquality implements Equality<AlumnoRecord> {
  const AlumnoRecordDocumentEquality();

  @override
  bool equals(AlumnoRecord? e1, AlumnoRecord? e2) {
    return e1?.ciAlu == e2?.ciAlu &&
        e1?.nomAlu == e2?.nomAlu &&
        e1?.grado == e2?.grado &&
        e1?.seccion == e2?.seccion &&
        e1?.periodo == e2?.periodo &&
        e1?.sexo == e2?.sexo &&
        e1?.retirado == e2?.retirado &&
        e1?.borrado == e2?.borrado &&
        e1?.rutCole == e2?.rutCole;
  }

  @override
  int hash(AlumnoRecord? e) => const ListEquality().hash([
        e?.ciAlu,
        e?.nomAlu,
        e?.grado,
        e?.seccion,
        e?.periodo,
        e?.sexo,
        e?.retirado,
        e?.borrado,
        e?.rutCole
      ]);

  @override
  bool isValidKey(Object? o) => o is AlumnoRecord;
}
