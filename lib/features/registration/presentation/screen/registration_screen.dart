import 'package:bvt1901_practice/features/login/domain/state/login_cubit.dart';
import 'package:bvt1901_practice/features/login/domain/state/login_state.dart';
import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/uikit/text_fields/app_password_field.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../uikit/error_message/error_message.dart';
import '../../../../uikit/spinkit/spinkit.dart';
import '../../../../uikit/text_fields/app_phone_field.dart';
import '../../../../uikit/text_fields/app_text_field.dart';
import '../../../../uikit/validators/app_validators.dart';
import '../../../router/presentation/screen/router_screen.dart';
import '../../domain/state/registration_cubit.dart';
import '../../domain/state/registration_state.dart';
import '../../../../uikit/buttons/app_text_button.dart';
import '../components/proggres_gradient.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  late String _password = '';
  late String _passwordProv = '';

  @override
  Widget build(BuildContext context) {
    final locale = context.appLocale;
    final colors = context.appColors;

    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
       if( state.profileEntity != null)
         {
           context.appRouter.pushAndRemoveAllBefore(context, const RouterScreen());
         }
      },
      child: BlocProvider(
        create: (context) => RegistrationCubit(),
        child: BlocConsumer<RegistrationCubit, RegistrationState>(
          listener: (context, state) {
            if(state.error!=null){
              AppTopMessage.error(context: context, title: state.error?.message??'');
            }
          },
          buildWhen: (p, c) => p != c,
          builder: (context, state) {
            return Scaffold(
              backgroundColor: colors.generalColor,
              appBar: DefaultAppBar(
                titleText: locale.registration,
              ),
              body: (!state.loading)
                  ? BackgroundProgressWidget(
                length: 10,
                error: state.error != null,
                child: FormBuilder(
                  key: _formKey,
                  child: Stack(
                    children: [
                      ListView(
                        children: [
                          SizedBox(height: 20.h),
                          AppTextField(
                            labelText: locale.name,
                            name: 'firstName',
                            initialValue: state.personEntity.firstName,
                            validator: AppValidators.requiredMinLengthField(
                                context),
                          ),
                          AppTextField(
                            labelText: locale.last_name,
                            name: 'lastName',
                            initialValue: state.personEntity.lastName,
                            validator: AppValidators.requiredMinLengthField(
                                context),
                          ),
                          AppTextField(
                            labelText: locale.patronymic,
                            initialValue: state.personEntity.middleName,
                            name: 'middleName',
                          ),
                          AppPhoneTextField(
                            labelText: locale.phone,
                            initialValue: state.personEntity.phone,
                            name: 'phone',
                          ),
                          AppPasswordField(
                            labelText: locale.password,
                            initialValue: state.personEntity.password,
                            name: 'password',
                            onChanged: (String? str) {
                              setState(() {
                                if (str != null) {
                                  _password = str;
                                }
                              });
                            },
                            validator: AppValidators.requiredPasswordField(
                                context),
                          ),
                          AppPasswordField(
                            labelText: locale.second_password,
                            initialValue: state.personEntity.password,
                            name: 'password_prov',
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
                          SizedBox(height: 130.h,),
                        ],
                      ),
                      Positioned(
                        bottom: 70.h,
                        left: 10.w,
                        right: 10.w,
                        child: AppTextButton(
                          color: colors.purple,
                          buttonText: locale.create_account,
                          onPressed: () async {
                            _formKey.currentState?.validate();
                            if (_formKey.currentState?.validate() ??
                                false) {
                              _formKey.currentState!.save();
                              await context
                                  .read<RegistrationCubit>()
                                  .saveStateAndRegistration(
                                _formKey.currentState!.value,
                              );
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
          },
        ),
      ),
    );
  }
}
