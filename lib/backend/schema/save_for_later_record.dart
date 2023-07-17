import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SaveForLaterRecord extends FirestoreRecord {
  SaveForLaterRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "on_sale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "MRP" field.
  double? _mrp;
  double get mrp => _mrp ?? 0.0;
  bool hasMrp() => _mrp != null;

  // "sellingPrice" field.
  double? _sellingPrice;
  double get sellingPrice => _sellingPrice ?? 0.0;
  bool hasSellingPrice() => _sellingPrice != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "inStock" field.
  bool? _inStock;
  bool get inStock => _inStock ?? false;
  bool hasInStock() => _inStock != null;

  // "productImageUrl" field.
  String? _productImageUrl;
  String get productImageUrl => _productImageUrl ?? '';
  bool hasProductImageUrl() => _productImageUrl != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _onSale = snapshotData['on_sale'] as bool?;
    _mrp = castToType<double>(snapshotData['MRP']);
    _sellingPrice = castToType<double>(snapshotData['sellingPrice']);
    _id = snapshotData['id'] as String?;
    _inStock = snapshotData['inStock'] as bool?;
    _productImageUrl = snapshotData['productImageUrl'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('save_for_later');

  static Stream<SaveForLaterRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SaveForLaterRecord.fromSnapshot(s));

  static Future<SaveForLaterRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SaveForLaterRecord.fromSnapshot(s));

  static SaveForLaterRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SaveForLaterRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SaveForLaterRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SaveForLaterRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SaveForLaterRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SaveForLaterRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSaveForLaterRecordData({
  String? name,
  String? description,
  bool? onSale,
  double? mrp,
  double? sellingPrice,
  String? id,
  bool? inStock,
  String? productImageUrl,
  DocumentReference? userRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'on_sale': onSale,
      'MRP': mrp,
      'sellingPrice': sellingPrice,
      'id': id,
      'inStock': inStock,
      'productImageUrl': productImageUrl,
      'userRef': userRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class SaveForLaterRecordDocumentEquality
    implements Equality<SaveForLaterRecord> {
  const SaveForLaterRecordDocumentEquality();

  @override
  bool equals(SaveForLaterRecord? e1, SaveForLaterRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.onSale == e2?.onSale &&
        e1?.mrp == e2?.mrp &&
        e1?.sellingPrice == e2?.sellingPrice &&
        e1?.id == e2?.id &&
        e1?.inStock == e2?.inStock &&
        e1?.productImageUrl == e2?.productImageUrl &&
        e1?.userRef == e2?.userRef;
  }

  @override
  int hash(SaveForLaterRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.onSale,
        e?.mrp,
        e?.sellingPrice,
        e?.id,
        e?.inStock,
        e?.productImageUrl,
        e?.userRef
      ]);

  @override
  bool isValidKey(Object? o) => o is SaveForLaterRecord;
}
