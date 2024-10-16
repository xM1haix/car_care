import 'package:car_care_flutter/functions/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeButton extends StatefulWidget {
  const ThemeButton({super.key});

  @override
  State<ThemeButton> createState() => _ThemeButtonState();
}

class _ThemeButtonState extends State<ThemeButton> {
  @override
  Widget build(BuildContext context) {
    final themeMode = context.watch<ProviderData>().themeMode;

    return IconButton(
      onPressed: () async => context.read<ProviderData>().updateThemeMode(),
      icon: Icon(
        switch (themeMode) {
          ThemeMode.dark => Icons.dark_mode_outlined,
          ThemeMode.light => Icons.light_mode_outlined,
          _ => Icons.auto_mode_outlined,
        },
      ),
    );
  }
}
