import 'package:flutter/material.dart';
import 'package:user_settings/theme/color_schemes.dart';

class AppTheme {
  static final ThemeData theme = ThemeData.light().copyWith(
      colorScheme: lightColorScheme,
      appBarTheme: const AppBarTheme(elevation: 0),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8))));

  static final ThemeData darkTheme =
      theme.copyWith(colorScheme: darkColorScheme);
}
