import 'package:shared_preferences/shared_preferences.dart';

class SettingsRepository {
  static const String _keyPopThreshold = "popThreshold";
  static const String _keyHourThreshold = "hourThreshold";

  static const int popThresholdDefault = 50;
  static const int hourThresholdDefault = 12;

  Future<int> getPopThreshold() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_keyPopThreshold) ?? popThresholdDefault;
  }

  Future<void> setPopThreshold(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_keyPopThreshold, value);
  }

  Future<int> getHourThreshold() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt(_keyHourThreshold) ?? hourThresholdDefault;
  }

  Future<void> setHourThreshold(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_keyHourThreshold, value);
  }
}
