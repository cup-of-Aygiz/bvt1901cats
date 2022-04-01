import 'package:bvt1901_practice/app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/features/registration/presentation/screen/registration_screen.dart';
import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/uikit/buttons/app_text_button.dart';
import 'package:bvt1901_practice/uikit/buttons/no_background-button.dart';
import 'package:bvt1901_practice/uikit/text_fields/app_phone_field.dart';
import 'package:bvt1901_practice/uikit/text_fields/app_text_field.dart';
import 'package:bvt1901_practice/uikit/validators/app_validators.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../registration/presentation/components/proggres_gradient.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    final locale = context.appLocale;
    final colors = context.appColors;
    final router = context.appRouter;

    return Scaffold(
      backgroundColor: colors.white,
      appBar: DefaultAppBar(
        titleText: locale.login_title,
      ),
      body: BackgroundProgressWidget(
        length: 2,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 32.h),
            ),
            Text(
              locale.project_name,
              style: AppTextStyle.normalW200S34H24,
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: EdgeInsets.only(top: 32.h),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              child: AppPhoneTextField(labelText: locale.phone, name: 'phone'),
            ),
            Padding(
              padding: EdgeInsets.only(top: 6.h),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w),
              child: AppTextField(
                labelText: locale.password,
                name: 'password',
                validator: AppValidators.requiredMinLengthField(context),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.h),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  locale.no_registration_yet,
                  style: AppTextStyle.normalW400S12H24,
                ),
                NoBackgroundButton(
                  buttonText: locale.create_account,
                  onPressed: () {
                    router.pushScreen(context, const RegistrationScreen());
                  },
                  style: AppTextStyle.normalW700S12H24,
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 150.h),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 10.w),
                child: AppTextButton(
                    color: colors.purple,
                    buttonText: locale.login,
                    onPressed: () {})),
          ],
        ),
      ),
    );
  }
}
