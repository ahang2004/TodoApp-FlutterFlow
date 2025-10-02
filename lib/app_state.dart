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

  String _quote = '';
  String get quote => _quote;
  set quote(String value) {
    _quote = value;
  }

  String _author = '';
  String get author => _author;
  set author(String value) {
    _author = value;
  }
}
