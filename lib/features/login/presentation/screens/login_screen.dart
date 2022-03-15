import 'package:bvt1901_practice/features/registration/presentation/components/app_text_button.dart';
import 'package:bvt1901_practice/features/registration/presentation/components/default_app_bar.dart';
import 'package:bvt1901_practice/uikit/text_fields/app_text_field.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  void loginButtonOnPressed(){}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const DefaultAppBar(myTitle: 'Вход в аккаунт'),
      body: ListView(
        children: [
          //TODO добавить картинку
          const AppTextField(labelText: 'Номер телефона', name: '',),
          const AppTextField(labelText: 'Пароль', name: '',),
          AppTextButton(buttonText: 'Войти', onPressed: loginButtonOnPressed),
        ],
      ),
    );
  }
}
