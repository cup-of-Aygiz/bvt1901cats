import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/assets.gen.dart';
import '../buttons/app_transparent_button.dart';

class PasswordEye extends StatefulWidget {
  const PasswordEye({Key? key}) : super(key: key);

  @override
  State<PasswordEye> createState() => _PasswordEyeState();
}

class _PasswordEyeState extends State<PasswordEye> {
  bool visible = false;

  changeVisible() {
    setState(() {
      visible=!visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30.h,
      height: 30.h,
      child: AppTransparentButton(
        onTap: () {
          changeVisible();
        },
        child: visible ? Assets.icons.icOpenEye.svg() : Assets.icons.icCloseEye.svg(),
      ),
    );
  }
}
