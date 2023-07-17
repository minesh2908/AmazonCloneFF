import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartRecord extends FirestoreRecord {
  CartRecord._(
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

  // "inStock" field.
  bool? _inStock;
  bool get inStock => _inStock ?? false;
  bool hasInStock() => _inStock != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "productImageUrl" field.
  String? _productImageUrl;
  String get productImageUrl => _productImageUrl ?? '';
  bool hasProductImageUrl() => _productImageUrl != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _onSale = snapshotData['on_sale'] as bool?;
    _mrp = castToType<double>(snapshotData['MRP']);
    _sellingPrice = castToType<double>(snapshotData['sellingPrice']);
    _inStock = snapshotData['inStock'] as bool?;
    _id = snapshotData['id'] as String?;
    _productImageUrl = snapshotData['productImageUrl'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _quantity = castToType<int>(snapshotData['quantity']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cart');

  static Stream<CartRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CartRecord.fromSnapshot(s));

  static Future<CartRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CartRecord.fromSnapshot(s));

  static CartRecord fromSnapshot(DocumentSnapshot snapshot) => CartRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CartRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CartRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CartRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CartRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCartRecordData({
  String? name,
  String? description,
  bool? onSale,
  double? mrp,
  double? sellingPrice,
  bool? inStock,
  String? id,
  String? productImageUrl,
  DocumentReference? userRef,
  int? quantity,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'on_sale': onSale,
      'MRP': mrp,
      'sellingPrice': sellingPrice,
      'inStock': inStock,
      'id': id,
      'productImageUrl': productImageUrl,
      'userRef': userRef,
      'quantity': quantity,
    }.withoutNulls,
  );

  return firestoreData;
}

class CartRecordDocumentEquality implements Equality<CartRecord> {
  const CartRecordDocumentEquality();

  @override
  bool equals(CartRecord? e1, CartRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.onSale == e2?.onSale &&
        e1?.mrp == e2?.mrp &&
        e1?.sellingPrice == e2?.sellingPrice &&
        e1?.inStock == e2?.inStock &&
        e1?.id == e2?.id &&
        e1?.productImageUrl == e2?.productImageUrl &&
        e1?.userRef == e2?.userRef &&
        e1?.quantity == e2?.quantity;
  }

  @override
  int hash(CartRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.onSale,
        e?.mrp,
        e?.sellingPrice,
        e?.inStock,
        e?.id,
        e?.productImageUrl,
        e?.userRef,
        e?.quantity
      ]);

  @override
  bool isValidKey(Object? o) => o is CartRecord;
}
