import 'dart:io';

import 'package:blue_business/core/managers/disposable_provider.dart';
import 'package:flutter/material.dart';

class ChatStateManager extends DisposableProvider {
  bool _scanning = false;
  bool get isScanning => _scanning;
  set isScanning(bool v) {
    _scanning = v;
    notifyListeners();
  }

  String _media = "";
  String get media => _media;
  set media(String v) {
    _media = v;
    notifyListeners();
  }

  String _docName = "";
  String get docName => _docName;
  set docName(String v) {
    _docName = v;
    notifyListeners();
  }

  File? _doc;
  File? get doc => _doc;
  set doc(File? v) {
    _doc = v;
    notifyListeners();
  }

  TextEditingController message = TextEditingController();

  @override
  void disposeValues() {}
}
