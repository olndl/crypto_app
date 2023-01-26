import 'package:crypto_app/gen/fonts.gen.dart';
import 'package:crypto_app/src/core/theme/colors_guide.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const _defaultFontFamily = FontFamily.latoRegular;

  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      fontFamily: _defaultFontFamily,
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: ColorsGuide.background),
    );
  }
}
