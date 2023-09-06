import 'package:flutter/material.dart';
import 'package:user_settings/theme/color_schemes.dart';

class AppTheme {
  static final ThemeData theme =
      ThemeData.light().copyWith(colorScheme: lightColorScheme);

  static final ThemeData darkTheme =
      theme.copyWith(colorScheme: darkColorScheme);
}
