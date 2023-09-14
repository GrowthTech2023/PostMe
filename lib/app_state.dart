import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _closesidebar = prefs.getBool('ff_closesidebar') ?? _closesidebar;
    });
    _safeInit(() {
      _currentProfileSetName =
          prefs.getString('ff_currentProfileSetName') ?? _currentProfileSetName;
    });
    _safeInit(() {
      _uidstate = prefs.getString('ff_uidstate') ?? _uidstate;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _closesidebar = true;
  bool get closesidebar => _closesidebar;
  set closesidebar(bool _value) {
    _closesidebar = _value;
    prefs.setBool('ff_closesidebar', _value);
  }

  bool _settingstabclickd = false;
  bool get settingstabclickd => _settingstabclickd;
  set settingstabclickd(bool _value) {
    _settingstabclickd = _value;
  }

  bool _posttabclickd = false;
  bool get posttabclickd => _posttabclickd;
  set posttabclickd(bool _value) {
    _posttabclickd = _value;
  }

  bool _profilestabclickd = false;
  bool get profilestabclickd => _profilestabclickd;
  set profilestabclickd(bool _value) {
    _profilestabclickd = _value;
  }

  bool _scheduletabclickd = false;
  bool get scheduletabclickd => _scheduletabclickd;
  set scheduletabclickd(bool _value) {
    _scheduletabclickd = _value;
  }

  String _currentProfileSetName = '';
  String get currentProfileSetName => _currentProfileSetName;
  set currentProfileSetName(String _value) {
    _currentProfileSetName = _value;
    prefs.setString('ff_currentProfileSetName', _value);
  }

  String _uidstate = '';
  String get uidstate => _uidstate;
  set uidstate(String _value) {
    _uidstate = _value;
    prefs.setString('ff_uidstate', _value);
  }

  String _prompt = '';
  String get prompt => _prompt;
  set prompt(String _value) {
    _prompt = _value;
  }

  dynamic _jsonpayload2;
  dynamic get jsonpayload2 => _jsonpayload2;
  set jsonpayload2(dynamic _value) {
    _jsonpayload2 = _value;
  }

  String _generatedcaptions = '';
  String get generatedcaptions => _generatedcaptions;
  set generatedcaptions(String _value) {
    _generatedcaptions = _value;
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
