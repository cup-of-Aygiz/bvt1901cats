import 'package:bvt1901_practice/features/registration/presentation/components/default_app_bar.dart';
import 'package:bvt1901_practice/features/registration/presentation/screen/phone_virification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../uikit/text_fields/app_text_field.dart';
import '../components/app_text_button.dart';
//import 'package:bvt1901_practice/utils/extentions/app_context.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  void createAccountOnPressed(BuildContext context){

    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) {
          return const PhoneVerification();
        }));
  }
  @override
  Widget build(BuildContext context) {

    //TODO добавить локализацию
    //final locale1 = context.appLocale;

    return Scaffold(
      appBar: const DefaultAppBar(myTitle: 'Регистрация'),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.h),
          ),
          const AppTextField(labelText: 'Имя'),
          const AppTextField(labelText: 'Фамилия'),
          const AppTextField(labelText: 'Отчество'),
          const AppTextField(labelText: 'Телефон'),
          const AppTextField(labelText: 'Пароль'),
          AppTextButton(buttonText: 'Создать аккаунт', onPressed: createAccountOnPressed(context)),
        ],
      ),
    );
  }
}
