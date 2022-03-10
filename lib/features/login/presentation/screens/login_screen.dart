import 'package:bvt1901_practice/features/registration/presentation/components/app_text_button.dart';
import 'package:bvt1901_practice/features/registration/presentation/components/default_app_bar.dart';
import 'package:bvt1901_practice/uikit/text_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void loginButtonOnPressed(){}

    return Scaffold(
      appBar: const DefaultAppBar(true, myTitle: 'Вход в аккаунт'),
      body: ListView(
        children: [
          //добавить картинку
          const AppTextField(myText: 'Номер телефона'),
          const AppTextField(myText: 'Пароль'),
          AppTextButton(buttonText: 'Войти', onPressed: loginButtonOnPressed),
        ],
      ),
    );
  }
}
