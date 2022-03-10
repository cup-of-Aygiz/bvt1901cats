import 'package:bvt1901_practice/features/registration/presentation/components/default_app_bar.dart';
import 'package:bvt1901_practice/features/registration/presentation/screen/phone_virification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../uikit/text_fields/app_text_field.dart';
import '../components/app_text_button.dart';
//import 'package:bvt1901_practice/utils/extentions/app_context.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //добавить локализацию после запуска
    //final locale1 = context.appLocale;

    void createAccountOnPressed(){

      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
            return const PhoneVerification();
          }));
    }

    return Scaffold(
      appBar: const DefaultAppBar(true,myTitle: 'Регистрация'),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.h),
          ),
          const AppTextField(myText: 'Имя'),
          const AppTextField(myText: 'Фамилия'),
          const AppTextField(myText: 'Отчество'),
          const AppTextField(myText: 'Телефон'),
          const AppTextField(myText: 'Пароль'),
          AppTextButton(buttonText: 'Создать аккаунт', onPressed: createAccountOnPressed),
        ],
      ),
    );
  }
}
