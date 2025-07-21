import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _helloMessage = '';
  String get helloMessage => _helloMessage;
  set helloMessage(String value) {
    _helloMessage = value;
  }

  String _abc = '';
  String get abc => _abc;
  set abc(String value) {
    _abc = value;
  }

  String _queryDB = '';
  String get queryDB => _queryDB;
  set queryDB(String value) {
    _queryDB = value;
  }
}
