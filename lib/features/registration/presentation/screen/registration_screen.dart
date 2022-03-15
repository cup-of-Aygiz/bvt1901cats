import 'package:bvt1901_practice/features/registration/presentation/components/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../uikit/text_fields/app_text_field.dart';
import '../../domain/state/registration_cubit.dart';
import '../../domain/state/registration_state.dart';
import '../components/app_text_button.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormBuilderState>();
  final String _phonePattern = r'^(?:[+0][1-9])?[0-9]{10,12}$';
  final String _passwordPattern =
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{7,}$';

  @override
  Widget build(BuildContext context) {
    //TODO добавить локализацию
    //final locale1 = context.appLocale;

    return BlocProvider(
      create: (context) => RegistrationCubit(),
      child: BlocBuilder<RegistrationCubit, RegistrationState>(
        builder: (context, state) {
          if (!state.loading) {
            return Scaffold(
              appBar: const DefaultAppBar(myTitle: 'Регистрация'),
              body: FormBuilder(
                key: _formKey,
                child: ListView(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20.h),
                    ),
                    AppTextField(
                      labelText: 'Имя',
                      name: 'firstName',
                      initialValue: state.firstName,
                      onChanged:
                          context.read<RegistrationCubit>().changeFirstName,
                      validator: FormBuilderValidators.minLength(context, 1,
                          errorText:
                              'Имя должно содержать хотя бы один символ'),
                    ),
                    AppTextField(
                      labelText: 'Фамилия',
                      name: 'lastName',
                      onChanged:
                          context.read<RegistrationCubit>().changeLastName,
                      validator: FormBuilderValidators.minLength(context, 1,
                          errorText:
                              'Фамилия должно содержать хотя бы один символ'),
                    ),
                    AppTextField(
                      labelText: 'Отчество',
                      name: 'middleName',
                      onChanged:
                          context.read<RegistrationCubit>().changeMiddleName,
                    ),
                    AppTextField(
                      labelText: 'Телефон',
                      name: 'phone',
                      onChanged: (str) {
                        if (str != null) {
                          context.read<RegistrationCubit>().changePhone(str);
                        }
                      },
                      validator: FormBuilderValidators.match(
                          context, _phonePattern,
                          errorText:
                              'Номер телефона должен быть введен корректно'),
                    ),
                    AppTextField(
                        labelText: 'Пароль',
                        name: 'password',
                        obscureText: true,
                        onChanged: (str) {
                          context.read<RegistrationCubit>().changePassword(str);
                        },
                        validator: FormBuilderValidators.match(
                            context, _passwordPattern,
                            errorText: 'Пароль не соответствует требованиям')),
                    const AppTextField(
                      labelText: 'Повторите пароль',
                      name: 'password_prov',
                      obscureText: true,
                      //TODO валидатор на сравнение с первым полем пароля
                    ),
                    AppTextButton(
                        buttonText: 'Создать аккаунт',
                        onPressed: () async {
                          //BlocProvider.of<RegistrationCubit>(context).registration(password: password, phone: phone);
                          _formKey.currentState?.validate();
                          if (_formKey.currentState?.validate() ?? false) {
                            _formKey.currentState!.save();
                            // String firstName =
                            //     _formKey.currentState!.value['firstName'];
                            // String lastName =
                            //     _formKey.currentState!.value['lastName'];
                            // String middleName =
                            //     _formKey.currentState!.value['middleName'];
                            // String phone =
                            //     _formKey.currentState!.value['phone'];
                            // String password =
                            //     _formKey.currentState!.value['password'];
                             await context
                                 .read<RegistrationCubit>()
                                 .registration();
                          }
                          //context.appRouter
                          //.pushScreen(context, const PhoneVerification());
                        }),
                  ],
                ),
              ),
            );
          } else {
            return const Scaffold(
                appBar: DefaultAppBar(myTitle: 'Регистрация'),
                body: Center(child: Text('ЗАГРУЗКА')));
          }
        },
      ),
    );
  }
}
