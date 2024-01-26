import 'package:flutter/material.dart';

const Color _customColor = Color(0xFFC755CD);
const List<Color> _colorThemes = [
  _customColor,
  Colors.yellow,
  Colors.green,
  Colors.blue,
  Colors.red,
  Colors.purple,
  Colors.orange,
];

class Apptheme {
  final int selectedTheme;

  Apptheme({required this.selectedTheme})
      : assert(selectedTheme >= 0 && selectedTheme < _colorThemes.length - 1);

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedTheme]);
  }
}
