import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageHelpers {
  StorageHelpers._();

  static const FlutterSecureStorage _storage = FlutterSecureStorage();

  static Future<String> getVal(String key) async {
    return await _storage.read(key: key) ?? "";
  }

  static Future setVal(String key, String val) async {
    await _storage.write(key: key, value: val);
  }

  static Future deleteByKey(String key) async {
    await _storage.delete(key: key);
  }

  static Future deleteAll() async {
    await _storage.deleteAll();
  }

  static getDataFromStorage() async {}
}
