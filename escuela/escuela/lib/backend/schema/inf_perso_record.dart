import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InfPersoRecord extends FirestoreRecord {
  InfPersoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id_perso" field.
  int? _idPerso;
  int get idPerso => _idPerso ?? 0;
  bool hasIdPerso() => _idPerso != null;

  // "ci_alu" field.
  String? _ciAlu;
  String get ciAlu => _ciAlu ?? '';
  bool hasCiAlu() => _ciAlu != null;

  // "codCurso" field.
  String? _codCurso;
  String get codCurso => _codCurso ?? '';
  bool hasCodCurso() => _codCurso != null;

  // "cod_ambito" field.
  int? _codAmbito;
  int get codAmbito => _codAmbito ?? 0;
  bool hasCodAmbito() => _codAmbito != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "rut_cole" field.
  String? _rutCole;
  String get rutCole => _rutCole ?? '';
  bool hasRutCole() => _rutCole != null;

  // "lit_sem1" field.
  String? _litSem1;
  String get litSem1 => _litSem1 ?? '';
  bool hasLitSem1() => _litSem1 != null;

  // "lit_sem2" field.
  String? _litSem2;
  String get litSem2 => _litSem2 ?? '';
  bool hasLitSem2() => _litSem2 != null;

  // "lit_1_2_listo" field.
  int? _lit12Listo;
  int get lit12Listo => _lit12Listo ?? 0;
  bool hasLit12Listo() => _lit12Listo != null;

  // "ambito_ref" field.
  DocumentReference? _ambitoRef;
  DocumentReference? get ambitoRef => _ambitoRef;
  bool hasAmbitoRef() => _ambitoRef != null;

  // "categ_Ambito" field.
  int? _categAmbito;
  int get categAmbito => _categAmbito ?? 0;
  bool hasCategAmbito() => _categAmbito != null;

  void _initializeFields() {
    _idPerso = castToType<int>(snapshotData['id_perso']);
    _ciAlu = snapshotData['ci_alu'] as String?;
    _codCurso = snapshotData['codCurso'] as String?;
    _codAmbito = castToType<int>(snapshotData['cod_ambito']);
    _fecha = snapshotData['fecha'] as DateTime?;
    _rutCole = snapshotData['rut_cole'] as String?;
    _litSem1 = snapshotData['lit_sem1'] as String?;
    _litSem2 = snapshotData['lit_sem2'] as String?;
    _lit12Listo = castToType<int>(snapshotData['lit_1_2_listo']);
    _ambitoRef = snapshotData['ambito_ref'] as DocumentReference?;
    _categAmbito = castToType<int>(snapshotData['categ_Ambito']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('inf_perso');

  static Stream<InfPersoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InfPersoRecord.fromSnapshot(s));

  static Future<InfPersoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InfPersoRecord.fromSnapshot(s));

  static InfPersoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InfPersoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InfPersoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InfPersoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InfPersoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InfPersoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInfPersoRecordData({
  int? idPerso,
  String? ciAlu,
  String? codCurso,
  int? codAmbito,
  DateTime? fecha,
  String? rutCole,
  String? litSem1,
  String? litSem2,
  int? lit12Listo,
  DocumentReference? ambitoRef,
  int? categAmbito,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_perso': idPerso,
      'ci_alu': ciAlu,
      'codCurso': codCurso,
      'cod_ambito': codAmbito,
      'fecha': fecha,
      'rut_cole': rutCole,
      'lit_sem1': litSem1,
      'lit_sem2': litSem2,
      'lit_1_2_listo': lit12Listo,
      'ambito_ref': ambitoRef,
      'categ_Ambito': categAmbito,
    }.withoutNulls,
  );

  return firestoreData;
}

class InfPersoRecordDocumentEquality implements Equality<InfPersoRecord> {
  const InfPersoRecordDocumentEquality();

  @override
  bool equals(InfPersoRecord? e1, InfPersoRecord? e2) {
    return e1?.idPerso == e2?.idPerso &&
        e1?.ciAlu == e2?.ciAlu &&
        e1?.codCurso == e2?.codCurso &&
        e1?.codAmbito == e2?.codAmbito &&
        e1?.fecha == e2?.fecha &&
        e1?.rutCole == e2?.rutCole &&
        e1?.litSem1 == e2?.litSem1 &&
        e1?.litSem2 == e2?.litSem2 &&
        e1?.lit12Listo == e2?.lit12Listo &&
        e1?.ambitoRef == e2?.ambitoRef &&
        e1?.categAmbito == e2?.categAmbito;
  }

  @override
  int hash(InfPersoRecord? e) => const ListEquality().hash([
        e?.idPerso,
        e?.ciAlu,
        e?.codCurso,
        e?.codAmbito,
        e?.fecha,
        e?.rutCole,
        e?.litSem1,
        e?.litSem2,
        e?.lit12Listo,
        e?.ambitoRef,
        e?.categAmbito
      ]);

  @override
  bool isValidKey(Object? o) => o is InfPersoRecord;
}
