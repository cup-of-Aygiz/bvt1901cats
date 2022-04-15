import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';

class VerificationButton extends StatelessWidget {
  const VerificationButton({Key? key, required this.buttonText})
      : super(key: key);
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    final myColors = context.appColors;

    /// TODO почему не используем AppTextButton?
    return Container(
      margin: EdgeInsets.fromLTRB(10.w, 10.h, 180.w, 10.h),
      height: 50,
      child: ElevatedButton(
        onPressed: () => {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(myColors.blue),
          elevation: MaterialStateProperty.all<double>(10),
          shape:
              MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0.r),
            ),
          )),
        ),
        child: Text(buttonText,
            style:
                AppTextStyle.normalW700S16.copyWith(color: myColors.black)),
      ),
    );
  }
}
