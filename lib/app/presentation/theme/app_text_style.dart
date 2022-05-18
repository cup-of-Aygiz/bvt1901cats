import 'package:flutter/material.dart';
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

 static final TextStyle normalW300S14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w300,
  );

  static final TextStyle normalW400S9 = TextStyle(
    fontSize: 9.sp,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle normalW500S10 = TextStyle(
    fontSize: 10.sp,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle normalW700S14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle normalW500S14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );

  static final TextStyle normalW400S14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle normalW700S30 = TextStyle(
    fontSize: 30.sp,
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

  static final TextStyle normalW700S24 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
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

  static final TextStyle normalW700S11 = TextStyle(
    fontSize: 11.sp,
    fontWeight: FontWeight.w700,
  );
  static final TextStyle normalW700S9 = TextStyle(
    fontSize: 9.sp,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle normalW400S20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle normalW700S20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w700,
  );

  static final TextStyle normalW400S24red = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
    color: Colors.red,

  );

  static final TextStyle bottomNavigationLabel = TextStyle(
    fontSize: 10.sp,
    height: 1.18,
    fontWeight: FontWeight.w400,
  );
}
