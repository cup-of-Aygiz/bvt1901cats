import 'package:bvt1901_practice/app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/features/registration/presentation/screen/registration_screen.dart';
import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/uikit/buttons/app_text_button.dart';
import 'package:bvt1901_practice/uikit/text_fields/app_phone_field.dart';
import 'package:bvt1901_practice/uikit/text_fields/app_text_field.dart';
import 'package:bvt1901_practice/uikit/validators/app_validators.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../uikit/buttons/app_button_detector.dart';
import '../../../../uikit/spinkit/spinkit.dart';
import '../../../registration/presentation/components/proggres_gradient.dart';
import '../../domain/state/login_cubit.dart';
import '../../domain/state/login_state.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final locale = context.appLocale;
    final colors = context.appColors;
    final router = context.appRouter;

    return BlocProvider(
        create: (context) => LoginCubit(),
        child: BlocBuilder<LoginCubit, LoginState>(builder: (context, state) {
          return Scaffold(
            backgroundColor: colors.white,
            appBar: DefaultAppBar(
              titleText: locale.login_title,
            ),
            body: (!state.loading)
                ? BackgroundProgressWidget(
                    length: 2,
                    child: ListView(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 32.h),
                        ),
                        Text(
                          locale.project_name,
                          style: AppTextStyle.normalW200S34,
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 32.h),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10.w),
                          child: AppPhoneTextField(
                              labelText: locale.phone, name: 'phone'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 6.h),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10.w),
                          child: AppTextField(
                            labelText: locale.password,
                            name: 'password',
                            validator:
                                AppValidators.requiredMinLengthField(context),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 40.h),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              locale.no_registration_yet,
                              style: AppTextStyle.normalW400S12,
                            ),
                            AppGestureDetector(
                              onPressed: () {
                                router.pushScreen(
                                    context, const RegistrationScreen());
                              },
                              child: Text(
                                locale.create_account,
                                style: AppTextStyle.normalW700S12
                                    .copyWith(color: colors.black),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 150.h),
                        ),
                        Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.w),
                            child: AppTextButton(
                              color: colors.purple,
                              buttonText: locale.login,
                              onPressed: () async {
                                _formKey.currentState?.validate();
                                if (_formKey.currentState?.validate() ??
                                    false) {
                                  _formKey.currentState!.save();
                                  await context
                                      .read<LoginCubit>()
                                      .saveStateAndLogin(
                                          _formKey.currentState!.value['phone'],
                                          _formKey
                                              .currentState!.value['password']);
                                }
                              },
                            )),
                      ],
                    ),
                  )
                : const AppSpinKit(),
          );
        }));
  }
}
