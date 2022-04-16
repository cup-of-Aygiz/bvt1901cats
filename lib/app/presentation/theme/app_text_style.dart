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
  static final TextStyle normalW700S18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle normalW700S16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle normalW200S34 = TextStyle(
    fontSize: 34.sp,
    fontWeight: FontWeight.w200,
  );

  static final TextStyle normalW400S12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle normalW400S16 = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle normalW700S12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle bottomNavigationLabel = TextStyle(
    fontSize: 10.sp,
    height: 1.18,
    fontWeight: FontWeight.w400,
  );
}
