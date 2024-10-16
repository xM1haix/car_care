import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '/extensions/string.dart';

class ProviderData with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;
  ThemeMode get themeMode => _themeMode;
  Future<void> init() async {
    _themeMode = (await SharedPreferences.getInstance())
        .getString('themeMode')
        .getThemeData;
    notifyListeners();
  }

  Future<void> updateThemeMode() async {
    nextThemeMode() => switch (_themeMode) {
          ThemeMode.dark => ThemeMode.system,
          ThemeMode.light => ThemeMode.dark,
          _ => ThemeMode.light,
        };
    final x = nextThemeMode();
    (await SharedPreferences.getInstance()).setString('themeMode', x.name);
    _themeMode = x;
    notifyListeners();
  }
}
