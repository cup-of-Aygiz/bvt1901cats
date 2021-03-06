import 'package:bvt1901_practice/uikit/buttons/app_text_button.dart';
import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/uikit/text_fields/app_text_field.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/verification_button.dart';

class PhoneVerification extends StatelessWidget {
  const PhoneVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    void verificationOnPressed(){
      Navigator.pop(context);
    }

    return  Scaffold(
      backgroundColor: colors.generalColor,
      appBar: const DefaultAppBar(titleText: 'Подстверждение номера',),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 16.h)),
          const AppTextField(labelText: 'Укажите телефон', name: '',),
          const VerificationButton(buttonText: 'Отправить смс'),
          Padding(padding: EdgeInsets.symmetric(horizontal: 30.w,vertical: 30.h)),
          const AppTextField(labelText: 'Код подтверждения', name: '',),
          AppTextButton(buttonText: 'Подтвердить', onPressed: verificationOnPressed),
        ],
      ),
    );
  }
}
