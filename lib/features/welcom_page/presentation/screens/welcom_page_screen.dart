import 'package:bvt1901_practice/features/login/presentation/screens/login_screen.dart';
import 'package:bvt1901_practice/features/registration/presentation/screen/registration_screen.dart';
import 'package:bvt1901_practice/gen/assets.gen.dart';
import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/uikit/buttons/app_text_button.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePageScreen extends StatelessWidget {
  const WelcomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = context.appLocale;
    final router = context.appRouter;
    final colors = context.appColors;

    return Scaffold(
      appBar: DefaultAppBar(
        titleText: locale.welcome,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.h),
          ),
          Image(
            image: Assets.images.logotip,
            width: 300.h,
            height: 300.h,
          ),
          Padding(
            padding: EdgeInsets.only(top: 80.h),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w),
            child: AppTextButton(
                buttonText: locale.login,
                onPressed: () {
                  router.pushScreen(context, const LoginScreen());
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
                  router.pushScreen(context, const RegistrationScreen());
                }),
          ),
        ],
      ),
      backgroundColor: colors.white,
    );
  }
}
