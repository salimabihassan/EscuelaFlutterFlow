import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotasRecord extends FirestoreRecord {
  NotasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cod_asig" field.
  int? _codAsig;
  int get codAsig => _codAsig ?? 0;
  bool hasCodAsig() => _codAsig != null;

  // "semestre" field.
  int? _semestre;
  int get semestre => _semestre ?? 0;
  bool hasSemestre() => _semestre != null;

  // "nota_promedio" field.
  double? _notaPromedio;
  double get notaPromedio => _notaPromedio ?? 0.0;
  bool hasNotaPromedio() => _notaPromedio != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "rut_cole" field.
  String? _rutCole;
  String get rutCole => _rutCole ?? '';
  bool hasRutCole() => _rutCole != null;

  // "nota1" field.
  String? _nota1;
  String get nota1 => _nota1 ?? '';
  bool hasNota1() => _nota1 != null;

  // "nota2" field.
  String? _nota2;
  String get nota2 => _nota2 ?? '';
  bool hasNota2() => _nota2 != null;

  // "nota3" field.
  String? _nota3;
  String get nota3 => _nota3 ?? '';
  bool hasNota3() => _nota3 != null;

  // "nota4" field.
  String? _nota4;
  String get nota4 => _nota4 ?? '';
  bool hasNota4() => _nota4 != null;

  // "nota5" field.
  String? _nota5;
  String get nota5 => _nota5 ?? '';
  bool hasNota5() => _nota5 != null;

  // "nota6" field.
  String? _nota6;
  String get nota6 => _nota6 ?? '';
  bool hasNota6() => _nota6 != null;

  // "nota7" field.
  String? _nota7;
  String get nota7 => _nota7 ?? '';
  bool hasNota7() => _nota7 != null;

  // "nota8" field.
  String? _nota8;
  String get nota8 => _nota8 ?? '';
  bool hasNota8() => _nota8 != null;

  // "nota9" field.
  String? _nota9;
  String get nota9 => _nota9 ?? '';
  bool hasNota9() => _nota9 != null;

  // "nota10" field.
  String? _nota10;
  String get nota10 => _nota10 ?? '';
  bool hasNota10() => _nota10 != null;

  // "cod_curso" field.
  String? _codCurso;
  String get codCurso => _codCurso ?? '';
  bool hasCodCurso() => _codCurso != null;

  // "ci_alu" field.
  String? _ciAlu;
  String get ciAlu => _ciAlu ?? '';
  bool hasCiAlu() => _ciAlu != null;

  // "alu_ref" field.
  DocumentReference? _aluRef;
  DocumentReference? get aluRef => _aluRef;
  bool hasAluRef() => _aluRef != null;

  // "asig_ref" field.
  DocumentReference? _asigRef;
  DocumentReference? get asigRef => _asigRef;
  bool hasAsigRef() => _asigRef != null;

  // "prom_final" field.
  double? _promFinal;
  double get promFinal => _promFinal ?? 0.0;
  bool hasPromFinal() => _promFinal != null;

  // "prom_Sem1" field.
  double? _promSem1;
  double get promSem1 => _promSem1 ?? 0.0;
  bool hasPromSem1() => _promSem1 != null;

  // "prom_Sem2" field.
  double? _promSem2;
  double get promSem2 => _promSem2 ?? 0.0;
  bool hasPromSem2() => _promSem2 != null;

  // "prom_General" field.
  double? _promGeneral;
  double get promGeneral => _promGeneral ?? 0.0;
  bool hasPromGeneral() => _promGeneral != null;

  // "Nota_Positiva" field.
  int? _notaPositiva;
  int get notaPositiva => _notaPositiva ?? 0;
  bool hasNotaPositiva() => _notaPositiva != null;

  // "Nota_Negativa" field.
  int? _notaNegativa;
  int get notaNegativa => _notaNegativa ?? 0;
  bool hasNotaNegativa() => _notaNegativa != null;

  // "Porcentaje_Asist" field.
  int? _porcentajeAsist;
  int get porcentajeAsist => _porcentajeAsist ?? 0;
  bool hasPorcentajeAsist() => _porcentajeAsist != null;

  // "Observaciones" field.
  String? _observaciones;
  String get observaciones => _observaciones ?? '';
  bool hasObservaciones() => _observaciones != null;

  // "Nota_Informe_Ref" field.
  DocumentReference? _notaInformeRef;
  DocumentReference? get notaInformeRef => _notaInformeRef;
  bool hasNotaInformeRef() => _notaInformeRef != null;

  void _initializeFields() {
    _codAsig = castToType<int>(snapshotData['cod_asig']);
    _semestre = castToType<int>(snapshotData['semestre']);
    _notaPromedio = castToType<double>(snapshotData['nota_promedio']);
    _fecha = snapshotData['fecha'] as DateTime?;
    _rutCole = snapshotData['rut_cole'] as String?;
    _nota1 = snapshotData['nota1'] as String?;
    _nota2 = snapshotData['nota2'] as String?;
    _nota3 = snapshotData['nota3'] as String?;
    _nota4 = snapshotData['nota4'] as String?;
    _nota5 = snapshotData['nota5'] as String?;
    _nota6 = snapshotData['nota6'] as String?;
    _nota7 = snapshotData['nota7'] as String?;
    _nota8 = snapshotData['nota8'] as String?;
    _nota9 = snapshotData['nota9'] as String?;
    _nota10 = snapshotData['nota10'] as String?;
    _codCurso = snapshotData['cod_curso'] as String?;
    _ciAlu = snapshotData['ci_alu'] as String?;
    _aluRef = snapshotData['alu_ref'] as DocumentReference?;
    _asigRef = snapshotData['asig_ref'] as DocumentReference?;
    _promFinal = castToType<double>(snapshotData['prom_final']);
    _promSem1 = castToType<double>(snapshotData['prom_Sem1']);
    _promSem2 = castToType<double>(snapshotData['prom_Sem2']);
    _promGeneral = castToType<double>(snapshotData['prom_General']);
    _notaPositiva = castToType<int>(snapshotData['Nota_Positiva']);
    _notaNegativa = castToType<int>(snapshotData['Nota_Negativa']);
    _porcentajeAsist = castToType<int>(snapshotData['Porcentaje_Asist']);
    _observaciones = snapshotData['Observaciones'] as String?;
    _notaInformeRef = snapshotData['Nota_Informe_Ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('notas');

  static Stream<NotasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotasRecord.fromSnapshot(s));

  static Future<NotasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotasRecord.fromSnapshot(s));

  static NotasRecord fromSnapshot(DocumentSnapshot snapshot) => NotasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotasRecordData({
  int? codAsig,
  int? semestre,
  double? notaPromedio,
  DateTime? fecha,
  String? rutCole,
  String? nota1,
  String? nota2,
  String? nota3,
  String? nota4,
  String? nota5,
  String? nota6,
  String? nota7,
  String? nota8,
  String? nota9,
  String? nota10,
  String? codCurso,
  String? ciAlu,
  DocumentReference? aluRef,
  DocumentReference? asigRef,
  double? promFinal,
  double? promSem1,
  double? promSem2,
  double? promGeneral,
  int? notaPositiva,
  int? notaNegativa,
  int? porcentajeAsist,
  String? observaciones,
  DocumentReference? notaInformeRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cod_asig': codAsig,
      'semestre': semestre,
      'nota_promedio': notaPromedio,
      'fecha': fecha,
      'rut_cole': rutCole,
      'nota1': nota1,
      'nota2': nota2,
      'nota3': nota3,
      'nota4': nota4,
      'nota5': nota5,
      'nota6': nota6,
      'nota7': nota7,
      'nota8': nota8,
      'nota9': nota9,
      'nota10': nota10,
      'cod_curso': codCurso,
      'ci_alu': ciAlu,
      'alu_ref': aluRef,
      'asig_ref': asigRef,
      'prom_final': promFinal,
      'prom_Sem1': promSem1,
      'prom_Sem2': promSem2,
      'prom_General': promGeneral,
      'Nota_Positiva': notaPositiva,
      'Nota_Negativa': notaNegativa,
      'Porcentaje_Asist': porcentajeAsist,
      'Observaciones': observaciones,
      'Nota_Informe_Ref': notaInformeRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotasRecordDocumentEquality implements Equality<NotasRecord> {
  const NotasRecordDocumentEquality();

  @override
  bool equals(NotasRecord? e1, NotasRecord? e2) {
    return e1?.codAsig == e2?.codAsig &&
        e1?.semestre == e2?.semestre &&
        e1?.notaPromedio == e2?.notaPromedio &&
        e1?.fecha == e2?.fecha &&
        e1?.rutCole == e2?.rutCole &&
        e1?.nota1 == e2?.nota1 &&
        e1?.nota2 == e2?.nota2 &&
        e1?.nota3 == e2?.nota3 &&
        e1?.nota4 == e2?.nota4 &&
        e1?.nota5 == e2?.nota5 &&
        e1?.nota6 == e2?.nota6 &&
        e1?.nota7 == e2?.nota7 &&
        e1?.nota8 == e2?.nota8 &&
        e1?.nota9 == e2?.nota9 &&
        e1?.nota10 == e2?.nota10 &&
        e1?.codCurso == e2?.codCurso &&
        e1?.ciAlu == e2?.ciAlu &&
        e1?.aluRef == e2?.aluRef &&
        e1?.asigRef == e2?.asigRef &&
        e1?.promFinal == e2?.promFinal &&
        e1?.promSem1 == e2?.promSem1 &&
        e1?.promSem2 == e2?.promSem2 &&
        e1?.promGeneral == e2?.promGeneral &&
        e1?.notaPositiva == e2?.notaPositiva &&
        e1?.notaNegativa == e2?.notaNegativa &&
        e1?.porcentajeAsist == e2?.porcentajeAsist &&
        e1?.observaciones == e2?.observaciones &&
        e1?.notaInformeRef == e2?.notaInformeRef;
  }

  @override
  int hash(NotasRecord? e) => const ListEquality().hash([
        e?.codAsig,
        e?.semestre,
        e?.notaPromedio,
        e?.fecha,
        e?.rutCole,
        e?.nota1,
        e?.nota2,
        e?.nota3,
        e?.nota4,
        e?.nota5,
        e?.nota6,
        e?.nota7,
        e?.nota8,
        e?.nota9,
        e?.nota10,
        e?.codCurso,
        e?.ciAlu,
        e?.aluRef,
        e?.asigRef,
        e?.promFinal,
        e?.promSem1,
        e?.promSem2,
        e?.promGeneral,
        e?.notaPositiva,
        e?.notaNegativa,
        e?.porcentajeAsist,
        e?.observaciones,
        e?.notaInformeRef
      ]);

  @override
  bool isValidKey(Object? o) => o is NotasRecord;
}
