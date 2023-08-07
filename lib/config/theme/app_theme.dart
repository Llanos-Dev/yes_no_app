import 'package:flutter/material.dart';

const Color _customColor = Color(0xE27806B5);

const List<Color> _colorThemes = [
  _customColor,
  Colors.amber,
  Colors.blue,
  Colors.red,
  Colors.pink,
  Colors.green,
  Colors.teal
];

class AppTheme {
  final int selecterColor;

  AppTheme({required this.selecterColor})
      : assert(
          selecterColor >= 0 && selecterColor <= _colorThemes.length - 1,
        );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selecterColor],
    );
  }
}
