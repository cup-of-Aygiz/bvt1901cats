import 'package:bvt1901_practice/utils/extentions/theme_data.dart';
import 'package:flutter/material.dart';

class AppColors {
  static AppColors of(BuildContext context) => Theme.of(context).appColors;

  final Color white;
  final Color blue;
  final Color darkBlue;
  final Color shadow;
  final Color black;
  final Color red;
  final Color transparent;

  const AppColors.light()
      :
        white = const Color(0xFFFFFFFF),
        black = const Color(0xFF363535),
        darkBlue = const Color.fromARGB(255, 33, 89, 230),
        shadow =  Colors.black38,
        red =  Colors.red,
        blue = const Color(0xFF99AAFF),
        transparent = const Color(0x00000000);
}
