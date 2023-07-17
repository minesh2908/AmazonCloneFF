import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _searchBar = false;
  bool get searchBar => _searchBar;
  set searchBar(bool _value) {
    _searchBar = _value;
  }

  bool _wishListAdd = false;
  bool get wishListAdd => _wishListAdd;
  set wishListAdd(bool _value) {
    _wishListAdd = _value;
  }

  int _quantity = 1;
  int get quantity => _quantity;
  set quantity(int _value) {
    _quantity = _value;
  }

  List<CategoryMapStruct> _procat = [
    CategoryMapStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://i02.appmifile.com/417_operator_in/17/08/2022/0d6e11e0b3d93f29d2877c77b28d9102!800x800!85.jpg\",\"name\":\"Shoes\"}')),
    CategoryMapStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://img.freepik.com/free-vector/sticker-template-clothes-racks-with-many-clothes-hangers-white-background_1308-61192.jpg?w=2000\",\"name\":\"Clothes\"}'))
  ];
  List<CategoryMapStruct> get procat => _procat;
  set procat(List<CategoryMapStruct> _value) {
    _procat = _value;
  }

  void addToProcat(CategoryMapStruct _value) {
    _procat.add(_value);
  }

  void removeFromProcat(CategoryMapStruct _value) {
    _procat.remove(_value);
  }

  void removeAtIndexFromProcat(int _index) {
    _procat.removeAt(_index);
  }

  void updateProcatAtIndex(
    int _index,
    CategoryMapStruct Function(CategoryMapStruct) updateFn,
  ) {
    _procat[_index] = updateFn(_procat[_index]);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
