import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static late SharedPreferences _localStorage;

  factory LocalStorage() => LocalStorage._internal();

  LocalStorage._internal();

  init() async {
    _localStorage = await SharedPreferences.getInstance();
  }

  static setStringData(String key, String data) async {
    _localStorage.setString(key, data);
  }

  static Future<String> getStringData(String key) async {
    return _localStorage.getString(key) ?? '';
  }

  static setIntData(String key, int data) async {
    _localStorage.setInt(key, data);
  }

  static Future<int> getIntData(String key) async {
    return _localStorage.getInt(key) ?? -1;
  }

  static setBoolData(String key, bool data) async {
    _localStorage.setBool(key, data);
  }

  static Future<bool> getBoolData(String key, bool defaultValue) async {
    return _localStorage.getBool(key) ?? defaultValue;
  }

  static removeData(String key) async {
    _localStorage.remove(key);
  }
}
