// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CartProductsQuantityStruct extends FFFirebaseStruct {
  CartProductsQuantityStruct({
    int? quantity,
    DocumentReference? productRef,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _quantity = quantity,
        _productRef = productRef,
        super(firestoreUtilData);

  // "Quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;
  void incrementQuantity(int amount) => _quantity = quantity + amount;
  bool hasQuantity() => _quantity != null;

  // "ProductRef" field.
  DocumentReference? _productRef;
  DocumentReference? get productRef => _productRef;
  set productRef(DocumentReference? val) => _productRef = val;
  bool hasProductRef() => _productRef != null;

  static CartProductsQuantityStruct fromMap(Map<String, dynamic> data) =>
      CartProductsQuantityStruct(
        quantity: castToType<int>(data['Quantity']),
        productRef: data['ProductRef'] as DocumentReference?,
      );

  static CartProductsQuantityStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? CartProductsQuantityStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'Quantity': _quantity,
        'ProductRef': _productRef,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'ProductRef': serializeParam(
          _productRef,
          ParamType.DocumentReference,
        ),
      }.withoutNulls;

  static CartProductsQuantityStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CartProductsQuantityStruct(
        quantity: deserializeParam(
          data['Quantity'],
          ParamType.int,
          false,
        ),
        productRef: deserializeParam(
          data['ProductRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['Products'],
        ),
      );

  @override
  String toString() => 'CartProductsQuantityStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CartProductsQuantityStruct &&
        quantity == other.quantity &&
        productRef == other.productRef;
  }

  @override
  int get hashCode => const ListEquality().hash([quantity, productRef]);
}

CartProductsQuantityStruct createCartProductsQuantityStruct({
  int? quantity,
  DocumentReference? productRef,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CartProductsQuantityStruct(
      quantity: quantity,
      productRef: productRef,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CartProductsQuantityStruct? updateCartProductsQuantityStruct(
  CartProductsQuantityStruct? cartProductsQuantity, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cartProductsQuantity
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCartProductsQuantityStructData(
  Map<String, dynamic> firestoreData,
  CartProductsQuantityStruct? cartProductsQuantity,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cartProductsQuantity == null) {
    return;
  }
  if (cartProductsQuantity.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue &&
      cartProductsQuantity.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final cartProductsQuantityData =
      getCartProductsQuantityFirestoreData(cartProductsQuantity, forFieldValue);
  final nestedData =
      cartProductsQuantityData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = cartProductsQuantity.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCartProductsQuantityFirestoreData(
  CartProductsQuantityStruct? cartProductsQuantity, [
  bool forFieldValue = false,
]) {
  if (cartProductsQuantity == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cartProductsQuantity.toMap());

  // Add any Firestore field values
  cartProductsQuantity.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCartProductsQuantityListFirestoreData(
  List<CartProductsQuantityStruct>? cartProductsQuantitys,
) =>
    cartProductsQuantitys
        ?.map((e) => getCartProductsQuantityFirestoreData(e, true))
        .toList() ??
    [];
