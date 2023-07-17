// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CategoryMapStruct extends FFFirebaseStruct {
  CategoryMapStruct({
    String? image,
    String? name,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        _name = name,
        super(firestoreUtilData);

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  static CategoryMapStruct fromMap(Map<String, dynamic> data) =>
      CategoryMapStruct(
        image: data['image'] as String?,
        name: data['name'] as String?,
      );

  static CategoryMapStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CategoryMapStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'name': _name,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
      }.withoutNulls;

  static CategoryMapStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoryMapStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CategoryMapStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CategoryMapStruct &&
        image == other.image &&
        name == other.name;
  }

  @override
  int get hashCode => const ListEquality().hash([image, name]);
}

CategoryMapStruct createCategoryMapStruct({
  String? image,
  String? name,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CategoryMapStruct(
      image: image,
      name: name,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CategoryMapStruct? updateCategoryMapStruct(
  CategoryMapStruct? categoryMap, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    categoryMap
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCategoryMapStructData(
  Map<String, dynamic> firestoreData,
  CategoryMapStruct? categoryMap,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (categoryMap == null) {
    return;
  }
  if (categoryMap.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && categoryMap.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final categoryMapData =
      getCategoryMapFirestoreData(categoryMap, forFieldValue);
  final nestedData =
      categoryMapData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = categoryMap.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCategoryMapFirestoreData(
  CategoryMapStruct? categoryMap, [
  bool forFieldValue = false,
]) {
  if (categoryMap == null) {
    return {};
  }
  final firestoreData = mapToFirestore(categoryMap.toMap());

  // Add any Firestore field values
  categoryMap.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCategoryMapListFirestoreData(
  List<CategoryMapStruct>? categoryMaps,
) =>
    categoryMaps?.map((e) => getCategoryMapFirestoreData(e, true)).toList() ??
    [];
