import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    this.color,
    this.textColor,
    this.width,
    this.height = 50,
  }) : super(key: key);
  final String buttonText;
  final Color? color;
  final Color? textColor;
  final VoidCallback onPressed;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final myColors = context.appColors;

    return SizedBox(
      height: height,
      width: width ?? MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(color ?? myColors.blue),
          elevation: MaterialStateProperty.all<double>(10),
          shape:
              MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.r),
            ),
          )),
        ),
        child: Text(
          buttonText,
          style: AppTextStyle.normalW700S16.copyWith(
            color: textColor ?? myColors.black,
          ),
        ),
      ),
    );
  }
}
