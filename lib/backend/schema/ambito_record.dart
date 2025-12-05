import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AmbitoRecord extends FirestoreRecord {
  AmbitoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cod_ambito" field.
  int? _codAmbito;
  int get codAmbito => _codAmbito ?? 0;
  bool hasCodAmbito() => _codAmbito != null;

  // "nom_ambito" field.
  String? _nomAmbito;
  String get nomAmbito => _nomAmbito ?? '';
  bool hasNomAmbito() => _nomAmbito != null;

  // "borrado" field.
  int? _borrado;
  int get borrado => _borrado ?? 0;
  bool hasBorrado() => _borrado != null;

  // "rut_cole" field.
  String? _rutCole;
  String get rutCole => _rutCole ?? '';
  bool hasRutCole() => _rutCole != null;

  // "cod_categ" field.
  int? _codCateg;
  int get codCateg => _codCateg ?? 0;
  bool hasCodCateg() => _codCateg != null;

  // "categ_ref" field.
  DocumentReference? _categRef;
  DocumentReference? get categRef => _categRef;
  bool hasCategRef() => _categRef != null;

  void _initializeFields() {
    _codAmbito = castToType<int>(snapshotData['cod_ambito']);
    _nomAmbito = snapshotData['nom_ambito'] as String?;
    _borrado = castToType<int>(snapshotData['borrado']);
    _rutCole = snapshotData['rut_cole'] as String?;
    _codCateg = castToType<int>(snapshotData['cod_categ']);
    _categRef = snapshotData['categ_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Ambito');

  static Stream<AmbitoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AmbitoRecord.fromSnapshot(s));

  static Future<AmbitoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AmbitoRecord.fromSnapshot(s));

  static AmbitoRecord fromSnapshot(DocumentSnapshot snapshot) => AmbitoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AmbitoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AmbitoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AmbitoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AmbitoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAmbitoRecordData({
  int? codAmbito,
  String? nomAmbito,
  int? borrado,
  String? rutCole,
  int? codCateg,
  DocumentReference? categRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cod_ambito': codAmbito,
      'nom_ambito': nomAmbito,
      'borrado': borrado,
      'rut_cole': rutCole,
      'cod_categ': codCateg,
      'categ_ref': categRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class AmbitoRecordDocumentEquality implements Equality<AmbitoRecord> {
  const AmbitoRecordDocumentEquality();

  @override
  bool equals(AmbitoRecord? e1, AmbitoRecord? e2) {
    return e1?.codAmbito == e2?.codAmbito &&
        e1?.nomAmbito == e2?.nomAmbito &&
        e1?.borrado == e2?.borrado &&
        e1?.rutCole == e2?.rutCole &&
        e1?.codCateg == e2?.codCateg &&
        e1?.categRef == e2?.categRef;
  }

  @override
  int hash(AmbitoRecord? e) => const ListEquality().hash([
        e?.codAmbito,
        e?.nomAmbito,
        e?.borrado,
        e?.rutCole,
        e?.codCateg,
        e?.categRef
      ]);

  @override
  bool isValidKey(Object? o) => o is AmbitoRecord;
}
