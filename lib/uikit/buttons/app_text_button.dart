import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';


class AppTextButton extends StatelessWidget {
  const AppTextButton({Key? key, required this.buttonText,required this.onPressed}) : super(key: key);
  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final myColors = context.appColors;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 70.w, vertical: 10.h),
      height: 50.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(myColors.blue),
          elevation: MaterialStateProperty.all<double>(10),
          shape:
              MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30.0.r),
            ),
          )),
        ),
        child: Text(buttonText,
            style:
                AppTextStyle.normalW700S16H24.copyWith(color: myColors.black)),
      ),
    );
  }
}
