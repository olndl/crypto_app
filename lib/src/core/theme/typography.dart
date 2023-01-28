import 'package:crypto_app/src/core/extensions/extensions.dart';
import 'package:crypto_app/src/core/theme/colors_guide.dart';
import 'package:crypto_app/src/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

abstract class TextStyles {
  static TextStyle extraBold = TextStyle(
    fontSize: 8.percentOfHeight,
    fontWeight: FontWeight.w900,
    color: ColorsGuide.background,
    letterSpacing: 1.2,
    fontFamily: FontFamily.latoRegular,
  );
  static TextStyle bold = TextStyle(
    fontSize: 6.percentOfHeight,
    color: ColorsGuide.background,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.2,
    fontFamily: FontFamily.latoRegular,
  );
  static TextStyle semiBold = TextStyle(
    fontSize: 3.percentOfHeight,
    color: ColorsGuide.background,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.2,
    fontFamily: FontFamily.latoRegular,
  );
  static TextStyle medium = TextStyle(
    fontSize: 3.percentOfHeight,
    color: ColorsGuide.background,
    fontWeight: FontWeight.w300,
    letterSpacing: 1.2,
    fontFamily: FontFamily.latoRegular,
  );
  static TextStyle regular = TextStyle(
    fontSize: 2.8.percentOfHeight,
    color: ColorsGuide.primaryBlack,
    fontWeight: FontWeight.normal,
    letterSpacing: 1.2,
    fontFamily: FontFamily.latoRegular,
  );
}
