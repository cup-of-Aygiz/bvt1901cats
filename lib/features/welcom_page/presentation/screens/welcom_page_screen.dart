import 'package:bvt1901_practice/features/registration/presentation/screen/registration_screen.dart';
import 'package:bvt1901_practice/gen/assets.gen.dart';
import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/uikit/buttons/app_text_button.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePageScreen extends StatelessWidget {
  const WelcomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = context.appLocale;

    return Scaffold(
      appBar: const DefaultAppBar(
        titleText: 'Aqualabean.ru',
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.h),
          ),
          const Image(
            image: AssetImage('assets/images/logo.png'),
            width: 400,
            height: 400,
          ),
          Padding(
            padding: EdgeInsets.only(top: 80.h),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            child: AppTextButton(
                buttonText: locale.login,
                onPressed: () {
                  context.appRouter
                      .pushScreen(context, const RegistrationScreen());
                }),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            child: AppTextButton(
                buttonText: locale.registration,
                onPressed: () {
                  context.appRouter
                      .pushScreen(context, const RegistrationScreen());
                }),
          ),
        ],
      ),
    );
  }
}
