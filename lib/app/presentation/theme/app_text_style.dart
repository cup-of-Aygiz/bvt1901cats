import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// normal = Roboto
///
/// Параметр [TextStyle.height] прописывать [sp] не надо, т.к. это не размер, а
/// процент(дробь) который будет зависить от нашего [TextStyle.fontSize], у
/// которого [sp] прописывать надо

class AppTextStyle {
  static final TextStyle normalW700S18H24 = TextStyle(
    fontSize: 18.sp,
    height: 24 / 18,
    fontWeight: FontWeight.w700,
  );
}
