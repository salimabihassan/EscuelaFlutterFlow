import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CursoRecord extends FirestoreRecord {
  CursoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "codcurso" field.
  String? _codcurso;
  String get codcurso => _codcurso ?? '';
  bool hasCodcurso() => _codcurso != null;

  // "grado" field.
  int? _grado;
  int get grado => _grado ?? 0;
  bool hasGrado() => _grado != null;

  // "sec" field.
  String? _sec;
  String get sec => _sec ?? '';
  bool hasSec() => _sec != null;

  // "periodo" field.
  int? _periodo;
  int get periodo => _periodo ?? 0;
  bool hasPeriodo() => _periodo != null;

  // "n_alu_curso" field.
  int? _nAluCurso;
  int get nAluCurso => _nAluCurso ?? 0;
  bool hasNAluCurso() => _nAluCurso != null;

  // "activo" field.
  int? _activo;
  int get activo => _activo ?? 0;
  bool hasActivo() => _activo != null;

  // "ci_prof" field.
  String? _ciProf;
  String get ciProf => _ciProf ?? '';
  bool hasCiProf() => _ciProf != null;

  // "rut_cole" field.
  String? _rutCole;
  String get rutCole => _rutCole ?? '';
  bool hasRutCole() => _rutCole != null;

  // "nivel_stud" field.
  String? _nivelStud;
  String get nivelStud => _nivelStud ?? '';
  bool hasNivelStud() => _nivelStud != null;

  // "prof_ref" field.
  DocumentReference? _profRef;
  DocumentReference? get profRef => _profRef;
  bool hasProfRef() => _profRef != null;

  void _initializeFields() {
    _codcurso = snapshotData['codcurso'] as String?;
    _grado = castToType<int>(snapshotData['grado']);
    _sec = snapshotData['sec'] as String?;
    _periodo = castToType<int>(snapshotData['periodo']);
    _nAluCurso = castToType<int>(snapshotData['n_alu_curso']);
    _activo = castToType<int>(snapshotData['activo']);
    _ciProf = snapshotData['ci_prof'] as String?;
    _rutCole = snapshotData['rut_cole'] as String?;
    _nivelStud = snapshotData['nivel_stud'] as String?;
    _profRef = snapshotData['prof_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('curso');

  static Stream<CursoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CursoRecord.fromSnapshot(s));

  static Future<CursoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CursoRecord.fromSnapshot(s));

  static CursoRecord fromSnapshot(DocumentSnapshot snapshot) => CursoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CursoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CursoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CursoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CursoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCursoRecordData({
  String? codcurso,
  int? grado,
  String? sec,
  int? periodo,
  int? nAluCurso,
  int? activo,
  String? ciProf,
  String? rutCole,
  String? nivelStud,
  DocumentReference? profRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'codcurso': codcurso,
      'grado': grado,
      'sec': sec,
      'periodo': periodo,
      'n_alu_curso': nAluCurso,
      'activo': activo,
      'ci_prof': ciProf,
      'rut_cole': rutCole,
      'nivel_stud': nivelStud,
      'prof_ref': profRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class CursoRecordDocumentEquality implements Equality<CursoRecord> {
  const CursoRecordDocumentEquality();

  @override
  bool equals(CursoRecord? e1, CursoRecord? e2) {
    return e1?.codcurso == e2?.codcurso &&
        e1?.grado == e2?.grado &&
        e1?.sec == e2?.sec &&
        e1?.periodo == e2?.periodo &&
        e1?.nAluCurso == e2?.nAluCurso &&
        e1?.activo == e2?.activo &&
        e1?.ciProf == e2?.ciProf &&
        e1?.rutCole == e2?.rutCole &&
        e1?.nivelStud == e2?.nivelStud &&
        e1?.profRef == e2?.profRef;
  }

  @override
  int hash(CursoRecord? e) => const ListEquality().hash([
        e?.codcurso,
        e?.grado,
        e?.sec,
        e?.periodo,
        e?.nAluCurso,
        e?.activo,
        e?.ciProf,
        e?.rutCole,
        e?.nivelStud,
        e?.profRef
      ]);

  @override
  bool isValidKey(Object? o) => o is CursoRecord;
}
