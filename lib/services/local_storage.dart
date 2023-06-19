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
}
