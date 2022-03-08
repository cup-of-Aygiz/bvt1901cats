import 'package:flutter/material.dart';

import '../../uikit/colors/app_colors.dart';

extension ThemeColors on ThemeData {
  ///Returns [AppColors] for current theme [Brightness]
  AppColors get appColors {
    // implement AppColors.dark if need dark mode
    return const AppColors.light();
  }
}
