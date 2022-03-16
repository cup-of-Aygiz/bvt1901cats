import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../uikit/text_fields/app_text_field.dart';
import '../../domain/state/registration_cubit.dart';
import '../../domain/state/registration_state.dart';
import '../../../../uikit/buttons/app_text_button.dart';

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
  late  String _password='';
  late String _passwordProv='';

  @override
  Widget build(BuildContext context) {
    //TODO добавить локализацию
    //final locale1 = context.appLocale;

    return BlocProvider(
      create: (context) => RegistrationCubit(),
      child: BlocBuilder<RegistrationCubit, RegistrationState>(
        builder: (context, state) {
            return Scaffold(
              appBar: const DefaultAppBar(myTitle: 'Регистрация'),
              body:  (!state.loading) ? FormBuilder(
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
                      validator: FormBuilderValidators.minLength(context, 1,
                          errorText:
                              'Это обязательное поле'),
                    ),
                    AppTextField(
                      labelText: 'Фамилия',
                      name: 'lastName',
                      validator: FormBuilderValidators.minLength(context, 1,
                          errorText:
                              'Это обязательное поле'),
                    ),
                    const AppTextField(
                      labelText: 'Отчество',
                      name: 'middleName',
                    ),
                    AppTextField(
                      labelText: 'Телефон',
                      name: 'phone',
                      validator: FormBuilderValidators.match(
                          context, _phonePattern,
                          errorText:
                              'Это обязательное поле'),
                    ),
                    AppTextField(
                        labelText: 'Пароль',
                        name: 'password',
                        onChanged: (String? str){
                          setState(() {
                            if (str!=null) {
                              _password=str;
                            }
                          });
                        },
                        obscureText: true,
                        validator: FormBuilderValidators.match(
                            context, _passwordPattern,
                            errorText: 'Пароль должен содержать хотя бы один строчный и заглавный латинские символы и цифру',
                        )
                    ),
                    AppTextField(
                      labelText: 'Повторите пароль',
                      name: 'password_prov',
                      obscureText: true,
                      onChanged: (String? str){
                        setState(() {
                          if (str!=null) {
                            _passwordProv=str;
                          }
                        });
                      },
                      autoValidateMode: AutovalidateMode.disabled,
                      validator: (String? passwordProv){
                          if (_password != _passwordProv) {
                            return 'Пароли не совпадают!';
                          }

                        return null;
                      },
                    ),
                    AppTextButton(
                        buttonText: 'Создать аккаунт',
                        onPressed: () async {
                          _formKey.currentState?.validate();
                          if (_formKey.currentState?.validate() ?? false) {
                            _formKey.currentState!.save();
                            String firstName =
                                _formKey.currentState!.value['firstName'];
                            String lastName =
                                _formKey.currentState!.value['lastName'];
                            String middleName =
                                _formKey.currentState!.value['middleName'];
                            String phone =
                                _formKey.currentState!.value['phone'];
                            String password =
                            _formKey.currentState!.value['password'];

                              context.read<RegistrationCubit>().changeFirstName(firstName);
                              context.read<RegistrationCubit>().changeLastName(lastName);
                              context.read<RegistrationCubit>().changeMiddleName(middleName);
                              context.read<RegistrationCubit>().changePassword(password);
                              context.read<RegistrationCubit>().changePhone(phone);

                              await context
                                  .read<RegistrationCubit>()
                                  .registration();
                          }
                        }),
                  ],
                ),
              )
                  :const Center(child: Text('ЗАГРУЗКА'))
            );
        },
      ),
    );
  }
}
