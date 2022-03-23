import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../gen/assets.gen.dart';

class AppSpinKit extends StatelessWidget {
  final Color? color;
  const AppSpinKit({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return SpinKitFoldingCube(
      duration: const Duration(seconds: 2),
      size: 50.h,
      itemBuilder: (BuildContext context, int index) {
        return Assets.icons.icBottle
            .svg(color: color ?? colors.darkPurple, height: 50.h, width: 50.h);
      },
    );
  }
}
