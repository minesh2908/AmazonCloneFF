import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DealOfTheDayRecord extends FirestoreRecord {
  DealOfTheDayRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ProductList" field.
  List<DocumentReference>? _productList;
  List<DocumentReference> get productList => _productList ?? const [];
  bool hasProductList() => _productList != null;

  void _initializeFields() {
    _productList = getDataList(snapshotData['ProductList']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('DealOfTheDay');

  static Stream<DealOfTheDayRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DealOfTheDayRecord.fromSnapshot(s));

  static Future<DealOfTheDayRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DealOfTheDayRecord.fromSnapshot(s));

  static DealOfTheDayRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DealOfTheDayRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DealOfTheDayRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DealOfTheDayRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DealOfTheDayRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DealOfTheDayRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDealOfTheDayRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class DealOfTheDayRecordDocumentEquality
    implements Equality<DealOfTheDayRecord> {
  const DealOfTheDayRecordDocumentEquality();

  @override
  bool equals(DealOfTheDayRecord? e1, DealOfTheDayRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.productList, e2?.productList);
  }

  @override
  int hash(DealOfTheDayRecord? e) =>
      const ListEquality().hash([e?.productList]);

  @override
  bool isValidKey(Object? o) => o is DealOfTheDayRecord;
}
