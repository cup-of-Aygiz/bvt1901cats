import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';

import '../../../login/presentation/screens/login_screen.dart';

class VerificationButton extends StatelessWidget {
  const VerificationButton({Key? key, required this.buttonText}) : super(key: key);
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    final myColors = context.appColors;

    return Container(
      margin: EdgeInsets.fromLTRB(10.w, 10.h, 180.w, 10.h),
      height: 50,
      child: ElevatedButton(
        onPressed: () => {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
                return const Login();
              }))
        },
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
            AppTextStyle.normalW700S18H24.copyWith(color: myColors.black,fontSize: 15)),
      ),
    );
  }
}
