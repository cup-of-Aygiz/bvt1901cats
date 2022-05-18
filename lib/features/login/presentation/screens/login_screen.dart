import 'package:bvt1901_practice/app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/features/registration/presentation/screen/registration_screen.dart';
import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/uikit/buttons/app_text_button.dart';
import 'package:bvt1901_practice/uikit/text_fields/app_phone_field.dart';
import 'package:bvt1901_practice/uikit/validators/app_validators.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../uikit/buttons/app_transparent_button.dart';
import '../../../../uikit/error_message/error_message.dart';
import '../../../../uikit/spinkit/spinkit.dart';
import '../../../../uikit/text_fields/app_password_field.dart';
import '../../../registration/presentation/components/proggres_gradient.dart';
import '../../../router/presentation/screen/router_screen.dart';
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

    return BlocConsumer<LoginCubit, LoginState>(listener: (context, state) {
      if(state.error!=null){
        AppTopMessage.error(context: context, title: state.error?.message??'');
      }
      if (state.profileEntity != null) {
        context.appRouter.pushAndPopToRoot(context, const RouterScreen());
      }
    }, builder: (context, state) {
      return Scaffold(
        backgroundColor: colors.white,
        appBar: DefaultAppBar(
          titleText: locale.login_title,
        ),
        body: (!state.loading)
            ? BackgroundProgressWidget(
                length: 10,
                child: FormBuilder(
                  key: _formKey,
                  child: ListView(
                    children: [
                      SizedBox(height: 32.h),
                      Text(
                        locale.project_name,
                        style: AppTextStyle.normalW200S34,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 32.h),
                      AppPhoneTextField(
                        labelText: locale.phone,
                        name: 'phone',
                        autoValidateMode: AutovalidateMode.disabled,
                      ),
                      SizedBox(height: 4.h),
                      Container(
                        height: 60.h,
                        margin: EdgeInsets.symmetric(horizontal: 10.w),
                        child: AppPasswordField(
                          labelText: locale.old_password,
                          name: 'password',
                          padding: EdgeInsets.symmetric(vertical: 2.h),
                          autoValidateMode: AutovalidateMode.disabled,
                          validator:
                              AppValidators.requiredMinLengthField(context),
                        ),
                      ),
                      SizedBox(height: 62.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            locale.no_registration_yet,
                            style: AppTextStyle.normalW400S12,
                          ),
                          SizedBox(width: 4.w),
                          AppTransparentButton(
                            onTap: () {
                              router.pushScreen(
                                  context, const RegistrationScreen());
                            },
                            child: Text(locale.create_account,
                                style: AppTextStyle.normalW700S12),
                          )
                        ],
                      ),
                      SizedBox(height: 230.h),
                      Container(
                        width: 300.w,
                        margin: EdgeInsets.symmetric(horizontal: 10.w),
                        child: AppTextButton(
                          color: colors.purple,
                          buttonText: locale.login,
                          onPressed: () async {
                            _formKey.currentState?.validate();
                            if (_formKey.currentState?.validate() ?? false) {
                              _formKey.currentState!.save();
                              await context
                                  .read<LoginCubit>()
                                  .saveStateAndLogin(
                                      _formKey.currentState!.value['phone'],
                                      _formKey.currentState!.value['password'])
                                  .then((loginSuccess) {
                                if (loginSuccess) {
                                  context.appRouter.pushAndPopToRoot(
                                      context, const RouterScreen());
                                }
                              });
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : const AppSpinKit(),
      );
    });
  }
}
