import 'package:bvt1901_practice/features/change_password/domain/state/change_password_state.dart';
import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../uikit/text_fields/app_text_field.dart';
import '../../../../uikit/validators/app_validators.dart';
import '../../domain/state/change_password_cubit.dart';

class ChangePasswordScreen extends StatefulWidget {
  ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  late String _password = '';
  late String _passwordProv = '';

  @override
  Widget build(BuildContext context) {
    final locale = context.appLocale;
    final colors = context.appColors;

    return Scaffold(
      appBar: DefaultAppBar(
        titleText: locale.change_password,
        action: [
          IconButton(
            splashColor: colors.blue,
            splashRadius: 24.r,
            onPressed: () async {
              _formKey.currentState?.validate();
              if (_formKey.currentState?.validate() ?? false) {
                String _newPassword = _password;
              }
            },
            icon: Assets.icons.icOk.svg(
              width: 30.h,
              height: 30.h,
            ),
          )
        ],
      ),
      body: BlocProvider(
        create: (context) => ChangePasswordCubit()..init(),
        child: BlocBuilder<ChangePasswordCubit, ChangePasswordState>(
          builder: (context, state) {
            return FormBuilder(
              key: _formKey,
              child: ListView(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: AppTextField(
                      labelText: locale.old_password,
                      name: 'old_password',
                      obscureText: true,
                      inputBorder: null,
                      padding: EdgeInsets.symmetric(vertical: 2.h),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: AppTextField(
                      labelText: locale.new_password,
                      name: 'new_password',
                      inputBorder: null,
                      obscureText: true,
                      validator: AppValidators.requiredPasswordField(context),
                      padding: EdgeInsets.symmetric(vertical: 2.h),
                      onChanged: (String? str) {
                        setState(() {
                          if (str != null) {
                            _password = str;
                          }
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: AppTextField(
                      labelText: locale.prov_password,
                      name: 'prov_password',
                      inputBorder: null,
                      obscureText: true,
                      padding: EdgeInsets.symmetric(vertical: 2.h),
                      onChanged: (String? str) {
                        setState(() {
                          if (str != null) {
                            _passwordProv = str;
                          }
                        });
                      },
                      autoValidateMode: AutovalidateMode.disabled,
                      validator: (String? passwordProv) {
                        if (_password != _passwordProv) {
                          return locale.passwords_not_match;
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
