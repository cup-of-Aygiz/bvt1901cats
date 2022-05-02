import 'package:bvt1901_practice/features/person_data/presentation/domain/state/profile_cubit.dart';
import 'package:bvt1901_practice/features/person_data/presentation/domain/state/profile_state.dart';
import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/uikit/buttons/app_text_button.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../uikit/spinkit/spinkit.dart';
import '../../../../uikit/text_fields/app_phone_field.dart';
import '../../../../uikit/text_fields/app_text_field.dart';
import '../../../../uikit/validators/app_validators.dart';
import '../../../change_password/presentation/screens/chande_password_page.dart';

class PersonDataScreen extends StatefulWidget {
  const PersonDataScreen({Key? key}) : super(key: key);

  @override
  State<PersonDataScreen> createState() => _PersonDataScreenState();
}

class _PersonDataScreenState extends State<PersonDataScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final locale = context.appLocale;

    return BlocProvider<ProfileCubit>(
      create: (context) => ProfileCubit()..init(),
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          return Scaffold(
            appBar: DefaultAppBar(
              titleText: locale.my_data,
            ),
            body: (!state.loading)
                ? FormBuilder(
                    key: _formKey,
                    child: Stack(
                      children: [
                        ListView(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          children: [
                            AppTextField(
                              labelText: locale.name,
                              padding: EdgeInsets.symmetric(vertical: 2.h),
                              inputBorder: null,
                              name: 'firstName',
                              initialValue: state.profileEntity?.firstName,
                              validator:
                                  AppValidators.requiredMinLengthField(context),
                            ),
                            AppTextField(
                              labelText: locale.last_name,
                              name: 'lastName',
                              padding: EdgeInsets.symmetric(vertical: 2.h),
                              inputBorder: null,
                              initialValue: state.profileEntity?.lastName,
                              validator:
                                  AppValidators.requiredMinLengthField(context),
                            ),
                            AppTextField(
                              labelText: locale.patronymic,
                              initialValue: state.profileEntity?.middleName,
                              name: 'middleName',
                              inputBorder: null,
                              padding: EdgeInsets.symmetric(vertical: 2.h),
                            ),
                            AppPhoneTextField(
                              labelText: locale.phone,
                              readOnly: true,
                              inputBorder: null,
                              padding: EdgeInsets.symmetric(vertical: 2.h),
                              initialValue: state.profileEntity?.phone,
                              name: 'phone',
                            ),
                            AppTextField(
                              labelText: locale.password,
                              inputBorder: null,
                              obscureText: true,
                              readOnly: true,
                              padding: EdgeInsets.symmetric(vertical: 2.h),
                              initialValue: 'Парольчик',
                              name: 'password',
                              onTap: () {
                                context.appRouter.pushScreen(
                                    context, const ChangePasswordScreen());
                              },
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.h, vertical: 4.w),
                              child: AppTextButton(
                                  //buttonText: locale.save_changes,
                                  buttonText: locale.save_changes,
                                  onPressed: () {}),
                            )
                          ],
                        ),
                      ],
                    ))
                : const AppSpinKit(),
          );
        },
      ),
    );
  }
}
