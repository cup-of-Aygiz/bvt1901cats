import 'package:bvt1901_practice/utils/extentions/theme_data.dart';
import 'package:flutter/material.dart';

class AppColors {
  static AppColors of(BuildContext context) => Theme.of(context).appColors;

  final Color white;
  final Color appBackground;
  final Color backgroundGrey;
  final Color appGreen;
  final Color appGreenLight;
  final Color black;
  final Color appTextInactive;
  final Color appRed;
  final Color appGreyDisable;
  final Color defaultBlack;
  final Color appGreyLight;
  final Color grey;
  final Color darkGrey;
  final Color whiteGrey;
  final Color lightGrey;

  final Color appGreyInactive;
  final Color appGrey;
  final Color appPurple;
  final Color appBlue;
  final Color appOrange;
  final Color appOrangeDisabled;
  final Color systemGrey;
  final Color systemRed;
  final Color transparent;

  const AppColors.light()
      : darkGrey = const Color(0xFF838A92),
        white = const Color(0xFFFFFFFF),
        appGreenLight = const Color(0xFFECFCF0),
        appBackground = const Color(0xFFFFFFFF),
        backgroundGrey = const Color(0xFFF4F4F4),
        appGreen = const Color(0xFF30C92C),
        black = const Color(0xFF363535),
        appTextInactive = const Color(0xFFA1A4B2),
        appGreyInactive = const Color(0xFFDADADA),
        appRed = const Color(0xFFCC2035),
        appGreyDisable = const Color(0xFFC3C5C8),
        defaultBlack = const Color(0xFF000000),
        appGreyLight = const Color(0xFFE6E7E8),
        grey = const Color(0xFFF8F8F8),
        appGrey = const Color(0xFF838A92),
        appPurple = const Color(0xFF882A7B),
        appBlue = const Color(0xFF4285F4),
        appOrange = const Color(0xFFFB8754),
        appOrangeDisabled = const Color(0xFFECD0D4),
        systemGrey = const Color(0xFFF7F7F7),
        systemRed = const Color(0xFFF8DEE1),
        whiteGrey = const Color(0xFFF4F4F4),
        lightGrey = const Color(0xFFC3C5C8),
        transparent = const Color(0x00000000);
}
