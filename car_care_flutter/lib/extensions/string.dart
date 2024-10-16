import 'package:flutter/material.dart';

extension ExtensionOnString on String? {
  ThemeMode get getThemeData => switch (this) {
        'dark' => ThemeMode.dark,
        '' => ThemeMode.light,
        _ => ThemeMode.system
      };
}
