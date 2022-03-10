import 'package:bvt1901_practice/features/registration/presentation/components/app_text_button.dart';
import 'package:bvt1901_practice/features/registration/presentation/components/default_app_bar.dart';
import 'package:bvt1901_practice/uikit/text_fields/app_text_field.dart';
import 'package:flutter/material.dart';

import '../components/verification_button.dart';

class PhoneVerification extends StatelessWidget {
  const PhoneVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void verificationOnPressed(){
      Navigator.pop(context);
    }

    return  Scaffold(
      appBar: const DefaultAppBar(true, myTitle: 'Подстверждение номера',),
      body: ListView(
        children: [
          const Padding(padding: EdgeInsets.all(15)),
          const AppTextField(myText: 'Укажите телефон'),
          const VerificationButton(buttonText: 'Отправить смс'),
          const Padding(padding: EdgeInsets.all(30)),
          const AppTextField(myText: 'Код подтверждения'),
          AppTextButton(buttonText: 'Подтвердить', onPressed: verificationOnPressed),
        ],
      ),
    );
  }
}
