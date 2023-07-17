import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
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

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "modified_at" field.
  DateTime? _modifiedAt;
  DateTime? get modifiedAt => _modifiedAt;
  bool hasModifiedAt() => _modifiedAt != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "onSale" field.
  bool? _onSale;
  bool get onSale => _onSale ?? false;
  bool hasOnSale() => _onSale != null;

  // "storeName" field.
  String? _storeName;
  String get storeName => _storeName ?? '';
  bool hasStoreName() => _storeName != null;

  // "colour" field.
  String? _colour;
  String get colour => _colour ?? '';
  bool hasColour() => _colour != null;

  // "MRP" field.
  double? _mrp;
  double get mrp => _mrp ?? 0.0;
  bool hasMrp() => _mrp != null;

  // "sellingPrice" field.
  double? _sellingPrice;
  double get sellingPrice => _sellingPrice ?? 0.0;
  bool hasSellingPrice() => _sellingPrice != null;

  // "productCategory" field.
  String? _productCategory;
  String get productCategory => _productCategory ?? '';
  bool hasProductCategory() => _productCategory != null;

  // "isDeal" field.
  bool? _isDeal;
  bool get isDeal => _isDeal ?? false;
  bool hasIsDeal() => _isDeal != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "productImageUrl" field.
  String? _productImageUrl;
  String get productImageUrl => _productImageUrl ?? '';
  bool hasProductImageUrl() => _productImageUrl != null;

  // "sizeList" field.
  List<String>? _sizeList;
  List<String> get sizeList => _sizeList ?? const [];
  bool hasSizeList() => _sizeList != null;

  // "inStock" field.
  bool? _inStock;
  bool get inStock => _inStock ?? false;
  bool hasInStock() => _inStock != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _createdAt = snapshotData['created_at'] as DateTime?;
    _modifiedAt = snapshotData['modified_at'] as DateTime?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _onSale = snapshotData['onSale'] as bool?;
    _storeName = snapshotData['storeName'] as String?;
    _colour = snapshotData['colour'] as String?;
    _mrp = castToType<double>(snapshotData['MRP']);
    _sellingPrice = castToType<double>(snapshotData['sellingPrice']);
    _productCategory = snapshotData['productCategory'] as String?;
    _isDeal = snapshotData['isDeal'] as bool?;
    _id = snapshotData['id'] as String?;
    _productImageUrl = snapshotData['productImageUrl'] as String?;
    _sizeList = getDataList(snapshotData['sizeList']);
    _inStock = snapshotData['inStock'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? name,
  String? description,
  DateTime? createdAt,
  DateTime? modifiedAt,
  int? quantity,
  bool? onSale,
  String? storeName,
  String? colour,
  double? mrp,
  double? sellingPrice,
  String? productCategory,
  bool? isDeal,
  String? id,
  String? productImageUrl,
  bool? inStock,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'created_at': createdAt,
      'modified_at': modifiedAt,
      'quantity': quantity,
      'onSale': onSale,
      'storeName': storeName,
      'colour': colour,
      'MRP': mrp,
      'sellingPrice': sellingPrice,
      'productCategory': productCategory,
      'isDeal': isDeal,
      'id': id,
      'productImageUrl': productImageUrl,
      'inStock': inStock,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.createdAt == e2?.createdAt &&
        e1?.modifiedAt == e2?.modifiedAt &&
        e1?.quantity == e2?.quantity &&
        e1?.onSale == e2?.onSale &&
        e1?.storeName == e2?.storeName &&
        e1?.colour == e2?.colour &&
        e1?.mrp == e2?.mrp &&
        e1?.sellingPrice == e2?.sellingPrice &&
        e1?.productCategory == e2?.productCategory &&
        e1?.isDeal == e2?.isDeal &&
        e1?.id == e2?.id &&
        e1?.productImageUrl == e2?.productImageUrl &&
        listEquality.equals(e1?.sizeList, e2?.sizeList) &&
        e1?.inStock == e2?.inStock;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.createdAt,
        e?.modifiedAt,
        e?.quantity,
        e?.onSale,
        e?.storeName,
        e?.colour,
        e?.mrp,
        e?.sellingPrice,
        e?.productCategory,
        e?.isDeal,
        e?.id,
        e?.productImageUrl,
        e?.sizeList,
        e?.inStock
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
