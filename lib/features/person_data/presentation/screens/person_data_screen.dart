import 'package:bvt1901_practice/features/person_data/presentation/domain/state/profile_cubit.dart';
import 'package:bvt1901_practice/features/person_data/presentation/domain/state/profile_state.dart';
import 'package:bvt1901_practice/gen/assets.gen.dart';
import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/uikit/buttons/app_text_button.dart';
import 'package:bvt1901_practice/uikit/buttons/app_transparent_button.dart';
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
    final router = context.appRouter;

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
                              suffix: AppTransparentButton(
                                child: Assets.icons.icSave
                                    .svg(width: 30.h, height: 30.h),
                                onTap: () {},
                              ),
                              initialValue: state.profileEntity?.firstName,
                              validator:
                                  AppValidators.requiredMinLengthField(context),
                            ),
                            AppTextField(
                              labelText: locale.last_name,
                              name: 'lastName',
                              padding: EdgeInsets.symmetric(vertical: 2.h),
                              inputBorder: null,
                              suffix: AppTransparentButton(
                                child: Assets.icons.icSave
                                    .svg(width: 30.h, height: 30.h),
                                onTap: () {},
                              ),
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
                              suffix: AppTransparentButton(
                                child: Assets.icons.icSave
                                    .svg(width: 30.h, height: 30.h),
                                onTap: () {},
                              ),
                            ),
                            AppPhoneTextField(
                              labelText: locale.phone,
                              readOnly: true,
                              inputBorder: null,
                              padding: EdgeInsets.symmetric(vertical: 2.h),
                              initialValue: state.profileEntity?.phone,
                              name: 'phone',
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.h, vertical: 30.w),
                              child: AppTextButton(
                                  buttonText: locale.change_password,
                                  onPressed: () {
                                    router.pushScreen(
                                        context, const ChangePasswordScreen());
                                  }),
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
