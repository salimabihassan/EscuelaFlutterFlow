import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategAmbitoRecord extends FirestoreRecord {
  CategAmbitoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cod_categ" field.
  int? _codCateg;
  int get codCateg => _codCateg ?? 0;
  bool hasCodCateg() => _codCateg != null;

  // "Descrip_Cat" field.
  String? _descripCat;
  String get descripCat => _descripCat ?? '';
  bool hasDescripCat() => _descripCat != null;

  // "borrado" field.
  int? _borrado;
  int get borrado => _borrado ?? 0;
  bool hasBorrado() => _borrado != null;

  // "rut_cole" field.
  String? _rutCole;
  String get rutCole => _rutCole ?? '';
  bool hasRutCole() => _rutCole != null;

  void _initializeFields() {
    _codCateg = castToType<int>(snapshotData['cod_categ']);
    _descripCat = snapshotData['Descrip_Cat'] as String?;
    _borrado = castToType<int>(snapshotData['borrado']);
    _rutCole = snapshotData['rut_cole'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Categ_Ambito');

  static Stream<CategAmbitoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CategAmbitoRecord.fromSnapshot(s));

  static Future<CategAmbitoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CategAmbitoRecord.fromSnapshot(s));

  static CategAmbitoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CategAmbitoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CategAmbitoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CategAmbitoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CategAmbitoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CategAmbitoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCategAmbitoRecordData({
  int? codCateg,
  String? descripCat,
  int? borrado,
  String? rutCole,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cod_categ': codCateg,
      'Descrip_Cat': descripCat,
      'borrado': borrado,
      'rut_cole': rutCole,
    }.withoutNulls,
  );

  return firestoreData;
}

class CategAmbitoRecordDocumentEquality implements Equality<CategAmbitoRecord> {
  const CategAmbitoRecordDocumentEquality();

  @override
  bool equals(CategAmbitoRecord? e1, CategAmbitoRecord? e2) {
    return e1?.codCateg == e2?.codCateg &&
        e1?.descripCat == e2?.descripCat &&
        e1?.borrado == e2?.borrado &&
        e1?.rutCole == e2?.rutCole;
  }

  @override
  int hash(CategAmbitoRecord? e) => const ListEquality()
      .hash([e?.codCateg, e?.descripCat, e?.borrado, e?.rutCole]);

  @override
  bool isValidKey(Object? o) => o is CategAmbitoRecord;
}
