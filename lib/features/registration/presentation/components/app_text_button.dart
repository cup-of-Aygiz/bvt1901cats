import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColors = context.appColors;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 70.w, vertical: 10.h),
      height: 50,
      child: ElevatedButton(
        onPressed: null,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(myColors.blue),
          elevation: MaterialStateProperty.all<double>(10),
          shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
              Radius.circular(30.0.r),
            ),
          )),
        ),
        child: Text('Создать аккаунт', style: AppTextStyle.normalW700S18H24),
      ),
    );
  }
}
