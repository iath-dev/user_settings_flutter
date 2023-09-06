import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;
  static String _name = "";
  static bool _darkMode = false;
  static int _gender = 1;

  static String get name => _prefs.getString("name") ?? _name;
  static bool get darkMode => _prefs.getBool("darkMode") ?? _darkMode;
  static int get gender => _prefs.getInt("gender") ?? _gender;

  static set name(String name) {
    _name = name;
    _prefs.setString("name", name);
  }

  static set darkMode(bool darkMode) {
    _darkMode = darkMode;
    _prefs.setBool("darkMode", darkMode);
  }

  static set gender(int gender) {
    _gender = gender;
    _prefs.setInt("gender", gender);
  }

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }
}
