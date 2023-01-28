import 'package:crypto_app/src/core/theme/colors_guide.dart';
import 'package:crypto_app/src/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

abstract class TextStyles {
  static TextStyle extraBold = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w900,
    color: ColorsGuide.background,
    letterSpacing: 1.2,
    fontFamily: FontFamily.latoRegular,
  );
  static TextStyle bold = TextStyle(
    fontSize: 30,
    color: ColorsGuide.background,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.2,
    fontFamily: FontFamily.latoRegular,
  );
  static TextStyle semiBold = TextStyle(
    fontSize: 28,
    color: ColorsGuide.background,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.2,
    fontFamily: FontFamily.latoRegular,
  );
  static TextStyle medium = TextStyle(
    fontSize: 22,
    color: ColorsGuide.background,
    fontWeight: FontWeight.w300,
    letterSpacing: 1.2,
    fontFamily: FontFamily.latoRegular,
  );
  static TextStyle regular = TextStyle(
    fontSize: 20,
    color: ColorsGuide.primaryBlack,
    fontWeight: FontWeight.normal,
    letterSpacing: 1.2,
    fontFamily: FontFamily.latoRegular,
  );
}
