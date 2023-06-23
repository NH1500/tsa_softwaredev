// ignore_for_file: unused_field, camel_case_types

import 'package:shared_preferences/shared_preferences.dart';

class localStorage {
  static SharedPreferences? _preferences;
  static const _keyStreak = 'streak';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setStreak(int? streak) async {
    if (streak != null) {
      await _preferences?.setInt(_keyStreak, streak);
    }
  }

  static int? getStreak() => _preferences!.getInt(_keyStreak);

  static Future<bool> hasUsedToday() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    DateTime currentDate = DateTime.now();
    String? storedDate = prefs.getString('lastUsedDate');
    if (storedDate == null || storedDate != currentDate.toString()) {
      await prefs.setString('lastUsedDate', currentDate.toString());
      return false;
    } else {
      return true;
    }
  }

  static Future<bool> hasUsedApp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool hasEverUsed = prefs.getBool('hasUsed') ?? false;

    if (!hasEverUsed) {
      await prefs.setBool('hasUsed', true);
      return false;
    } else {
      return true;
    }
  }
}
