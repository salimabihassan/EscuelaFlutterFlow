import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotaInformeRecord extends FirestoreRecord {
  NotaInformeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "prom_Sem1" field.
  double? _promSem1;
  double get promSem1 => _promSem1 ?? 0.0;
  bool hasPromSem1() => _promSem1 != null;

  // "prom_Sem2" field.
  double? _promSem2;
  double get promSem2 => _promSem2 ?? 0.0;
  bool hasPromSem2() => _promSem2 != null;

  // "Prom_General" field.
  double? _promGeneral;
  double get promGeneral => _promGeneral ?? 0.0;
  bool hasPromGeneral() => _promGeneral != null;

  // "nota_Posit" field.
  int? _notaPosit;
  int get notaPosit => _notaPosit ?? 0;
  bool hasNotaPosit() => _notaPosit != null;

  // "nota_Neg" field.
  int? _notaNeg;
  int get notaNeg => _notaNeg ?? 0;
  bool hasNotaNeg() => _notaNeg != null;

  // "Porcet_Asist" field.
  int? _porcetAsist;
  int get porcetAsist => _porcetAsist ?? 0;
  bool hasPorcetAsist() => _porcetAsist != null;

  // "Observ" field.
  String? _observ;
  String get observ => _observ ?? '';
  bool hasObserv() => _observ != null;

  // "ci_alu" field.
  String? _ciAlu;
  String get ciAlu => _ciAlu ?? '';
  bool hasCiAlu() => _ciAlu != null;

  // "cod_curso" field.
  String? _codCurso;
  String get codCurso => _codCurso ?? '';
  bool hasCodCurso() => _codCurso != null;

  // "Ambito_ref" field.
  DocumentReference? _ambitoRef;
  DocumentReference? get ambitoRef => _ambitoRef;
  bool hasAmbitoRef() => _ambitoRef != null;

  // "categ_ref" field.
  DocumentReference? _categRef;
  DocumentReference? get categRef => _categRef;
  bool hasCategRef() => _categRef != null;

  // "rut_cole" field.
  String? _rutCole;
  String get rutCole => _rutCole ?? '';
  bool hasRutCole() => _rutCole != null;

  void _initializeFields() {
    _promSem1 = castToType<double>(snapshotData['prom_Sem1']);
    _promSem2 = castToType<double>(snapshotData['prom_Sem2']);
    _promGeneral = castToType<double>(snapshotData['Prom_General']);
    _notaPosit = castToType<int>(snapshotData['nota_Posit']);
    _notaNeg = castToType<int>(snapshotData['nota_Neg']);
    _porcetAsist = castToType<int>(snapshotData['Porcet_Asist']);
    _observ = snapshotData['Observ'] as String?;
    _ciAlu = snapshotData['ci_alu'] as String?;
    _codCurso = snapshotData['cod_curso'] as String?;
    _ambitoRef = snapshotData['Ambito_ref'] as DocumentReference?;
    _categRef = snapshotData['categ_ref'] as DocumentReference?;
    _rutCole = snapshotData['rut_cole'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Nota_informe');

  static Stream<NotaInformeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotaInformeRecord.fromSnapshot(s));

  static Future<NotaInformeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotaInformeRecord.fromSnapshot(s));

  static NotaInformeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotaInformeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotaInformeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotaInformeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotaInformeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotaInformeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotaInformeRecordData({
  double? promSem1,
  double? promSem2,
  double? promGeneral,
  int? notaPosit,
  int? notaNeg,
  int? porcetAsist,
  String? observ,
  String? ciAlu,
  String? codCurso,
  DocumentReference? ambitoRef,
  DocumentReference? categRef,
  String? rutCole,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'prom_Sem1': promSem1,
      'prom_Sem2': promSem2,
      'Prom_General': promGeneral,
      'nota_Posit': notaPosit,
      'nota_Neg': notaNeg,
      'Porcet_Asist': porcetAsist,
      'Observ': observ,
      'ci_alu': ciAlu,
      'cod_curso': codCurso,
      'Ambito_ref': ambitoRef,
      'categ_ref': categRef,
      'rut_cole': rutCole,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotaInformeRecordDocumentEquality implements Equality<NotaInformeRecord> {
  const NotaInformeRecordDocumentEquality();

  @override
  bool equals(NotaInformeRecord? e1, NotaInformeRecord? e2) {
    return e1?.promSem1 == e2?.promSem1 &&
        e1?.promSem2 == e2?.promSem2 &&
        e1?.promGeneral == e2?.promGeneral &&
        e1?.notaPosit == e2?.notaPosit &&
        e1?.notaNeg == e2?.notaNeg &&
        e1?.porcetAsist == e2?.porcetAsist &&
        e1?.observ == e2?.observ &&
        e1?.ciAlu == e2?.ciAlu &&
        e1?.codCurso == e2?.codCurso &&
        e1?.ambitoRef == e2?.ambitoRef &&
        e1?.categRef == e2?.categRef &&
        e1?.rutCole == e2?.rutCole;
  }

  @override
  int hash(NotaInformeRecord? e) => const ListEquality().hash([
        e?.promSem1,
        e?.promSem2,
        e?.promGeneral,
        e?.notaPosit,
        e?.notaNeg,
        e?.porcetAsist,
        e?.observ,
        e?.ciAlu,
        e?.codCurso,
        e?.ambitoRef,
        e?.categRef,
        e?.rutCole
      ]);

  @override
  bool isValidKey(Object? o) => o is NotaInformeRecord;
}
