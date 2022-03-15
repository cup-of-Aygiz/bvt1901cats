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
                      initialValue: state.firstName,
                      onChanged:
                          context.read<RegistrationCubit>().changeFirstName,
                      name: 'firstName',
                    ),
                    const AppTextField(
                      labelText: 'Фамилия',
                      name: 'lastName',
                    ),
                    const AppTextField(
                      labelText: 'Отчество',
                      name: 'middleName',
                    ),
                    AppTextField(
                      labelText: 'Телефон',
                      onChanged: (str) {
                        if (str != null) {
                          context.read<RegistrationCubit>().changePhone(str);
                        }
                      },
                      name: 'phone',
                    ),
                    AppTextField(
                      labelText: 'Пароль',
                      onChanged: (str) {
                        context.read<RegistrationCubit>().changePassword(str);
                      },
                      name: 'password',
                    ),
                    AppTextButton(
                        buttonText: 'Создать аккаунт',
                        onPressed: () async {
                          // BlocProvider.of<RegistrationCubit>(context).registration(password: password, phone: phone);
                          _formKey.currentState?.validate();
                          if (_formKey.currentState?.validate() ?? false) {
                            _formKey.currentState!.save();
                            // String firstName =
                            //     _formKey.currentState!.value['firstName'];
                            // print(firstName);
                            // await context
                            //     .read<RegistrationCubit>()
                            //     .registration();
                            // print(_formKey.currentState!.value);
                            // print(state);
                          }
                          // context.appRouter
                          //     .pushScreen(context, const PhoneVerification());
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
