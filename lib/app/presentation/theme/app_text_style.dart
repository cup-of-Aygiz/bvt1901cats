import 'package:bvt1901_practice/gen/fonts.gen.dart';
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

  static final TextStyle normalW700S16H24 = TextStyle(
    fontSize: 16.sp,
    height: 24 / 18,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle normalW200S34H24 = TextStyle(
    fontSize: 34.sp,
    height: 24 / 18,
    fontWeight: FontWeight.w200,
    fontStyle: FontStyle.italic
  );

  static final TextStyle normalW400S12H24 = TextStyle(
      fontSize: 12.sp,
      height: 24 / 18,
      fontWeight: FontWeight.w400,
  );

  static final TextStyle normalW700S12H24 = TextStyle(
      fontSize: 12.sp,
      height: 24 / 18,
      fontWeight: FontWeight.w700,
  );
}
