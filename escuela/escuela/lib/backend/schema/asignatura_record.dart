import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AsignaturaRecord extends FirestoreRecord {
  AsignaturaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cod_asig" field.
  int? _codAsig;
  int get codAsig => _codAsig ?? 0;
  bool hasCodAsig() => _codAsig != null;

  // "Nom_asig" field.
  String? _nomAsig;
  String get nomAsig => _nomAsig ?? '';
  bool hasNomAsig() => _nomAsig != null;

  // "borrado" field.
  int? _borrado;
  int get borrado => _borrado ?? 0;
  bool hasBorrado() => _borrado != null;

  // "rut_cole" field.
  String? _rutCole;
  String get rutCole => _rutCole ?? '';
  bool hasRutCole() => _rutCole != null;

  // "octavoB" field.
  bool? _octavoB;
  bool get octavoB => _octavoB ?? false;
  bool hasOctavoB() => _octavoB != null;

  // "septimoB" field.
  bool? _septimoB;
  bool get septimoB => _septimoB ?? false;
  bool hasSeptimoB() => _septimoB != null;

  // "sextoB" field.
  bool? _sextoB;
  bool get sextoB => _sextoB ?? false;
  bool hasSextoB() => _sextoB != null;

  // "QuintoB" field.
  bool? _quintoB;
  bool get quintoB => _quintoB ?? false;
  bool hasQuintoB() => _quintoB != null;

  // "cuartoB" field.
  bool? _cuartoB;
  bool get cuartoB => _cuartoB ?? false;
  bool hasCuartoB() => _cuartoB != null;

  // "terceroB" field.
  bool? _terceroB;
  bool get terceroB => _terceroB ?? false;
  bool hasTerceroB() => _terceroB != null;

  // "segundoB" field.
  bool? _segundoB;
  bool get segundoB => _segundoB ?? false;
  bool hasSegundoB() => _segundoB != null;

  // "primeroB" field.
  bool? _primeroB;
  bool get primeroB => _primeroB ?? false;
  bool hasPrimeroB() => _primeroB != null;

  // "gradosCursa" field.
  List<int>? _gradosCursa;
  List<int> get gradosCursa => _gradosCursa ?? const [];
  bool hasGradosCursa() => _gradosCursa != null;

  void _initializeFields() {
    _codAsig = castToType<int>(snapshotData['cod_asig']);
    _nomAsig = snapshotData['Nom_asig'] as String?;
    _borrado = castToType<int>(snapshotData['borrado']);
    _rutCole = snapshotData['rut_cole'] as String?;
    _octavoB = snapshotData['octavoB'] as bool?;
    _septimoB = snapshotData['septimoB'] as bool?;
    _sextoB = snapshotData['sextoB'] as bool?;
    _quintoB = snapshotData['QuintoB'] as bool?;
    _cuartoB = snapshotData['cuartoB'] as bool?;
    _terceroB = snapshotData['terceroB'] as bool?;
    _segundoB = snapshotData['segundoB'] as bool?;
    _primeroB = snapshotData['primeroB'] as bool?;
    _gradosCursa = getDataList(snapshotData['gradosCursa']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Asignatura');

  static Stream<AsignaturaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AsignaturaRecord.fromSnapshot(s));

  static Future<AsignaturaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AsignaturaRecord.fromSnapshot(s));

  static AsignaturaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AsignaturaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AsignaturaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AsignaturaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AsignaturaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AsignaturaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAsignaturaRecordData({
  int? codAsig,
  String? nomAsig,
  int? borrado,
  String? rutCole,
  bool? octavoB,
  bool? septimoB,
  bool? sextoB,
  bool? quintoB,
  bool? cuartoB,
  bool? terceroB,
  bool? segundoB,
  bool? primeroB,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cod_asig': codAsig,
      'Nom_asig': nomAsig,
      'borrado': borrado,
      'rut_cole': rutCole,
      'octavoB': octavoB,
      'septimoB': septimoB,
      'sextoB': sextoB,
      'QuintoB': quintoB,
      'cuartoB': cuartoB,
      'terceroB': terceroB,
      'segundoB': segundoB,
      'primeroB': primeroB,
    }.withoutNulls,
  );

  return firestoreData;
}

class AsignaturaRecordDocumentEquality implements Equality<AsignaturaRecord> {
  const AsignaturaRecordDocumentEquality();

  @override
  bool equals(AsignaturaRecord? e1, AsignaturaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.codAsig == e2?.codAsig &&
        e1?.nomAsig == e2?.nomAsig &&
        e1?.borrado == e2?.borrado &&
        e1?.rutCole == e2?.rutCole &&
        e1?.octavoB == e2?.octavoB &&
        e1?.septimoB == e2?.septimoB &&
        e1?.sextoB == e2?.sextoB &&
        e1?.quintoB == e2?.quintoB &&
        e1?.cuartoB == e2?.cuartoB &&
        e1?.terceroB == e2?.terceroB &&
        e1?.segundoB == e2?.segundoB &&
        e1?.primeroB == e2?.primeroB &&
        listEquality.equals(e1?.gradosCursa, e2?.gradosCursa);
  }

  @override
  int hash(AsignaturaRecord? e) => const ListEquality().hash([
        e?.codAsig,
        e?.nomAsig,
        e?.borrado,
        e?.rutCole,
        e?.octavoB,
        e?.septimoB,
        e?.sextoB,
        e?.quintoB,
        e?.cuartoB,
        e?.terceroB,
        e?.segundoB,
        e?.primeroB,
        e?.gradosCursa
      ]);

  @override
  bool isValidKey(Object? o) => o is AsignaturaRecord;
}
