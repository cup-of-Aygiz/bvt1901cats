import 'package:bvt1901_practice/utils/extentions/theme_data.dart';
import 'package:flutter/material.dart';

class AppColors {
  static AppColors of(BuildContext context) => Theme.of(context).appColors;

  final Color white;
  final Color red;
  final Color darkRed;
  final Color blue;
  final Color darkBlue;
  final Color lightBlue;
  final Color darkOcean;
  final Color lightOcean;
  final Color ocean;
  final Color purple;
  final Color lightPurple;
  final Color darkPurple;
  final Color green;
  final Color lightGreen;
  final Color darkGreen;
  final Color black;
  final Color transparent;
  final Color generalColor;
  final Color grey;
  //final Color grey;

  //final Color thirdColor;

  const AppColors.light()
      : white = const Color(0xFFFFFFFF),
        black = const Color(0xFF363535),
        red = const Color(0xFFFF3434),
        darkRed = const Color(0xFFA60000),
        blue = const Color(0xFF99AAFF),
        lightBlue = const Color(0xFFC7D0FF),
        darkBlue = const Color(0xFF3244A6),
        darkOcean = const Color(0xFF005f89),
        lightOcean = const Color(0xFF63cdd7),
        ocean = const Color(0xFF0093b7),
        purple = const Color(0xFFA28ACF),
        lightPurple = const Color(0xFFCFBEEE),
        darkPurple = const Color(0xFF6A30A6),
        green = const Color(0xFF8AFFEF),
        lightGreen = const Color(0xFFBFFFF6),
        darkGreen = const Color(0xFF2DA695),
        transparent = const Color(0x00000000),
        generalColor = const Color(0xFFC8D3E6),
        grey = const Color(0xFF9e9e9e);
}
