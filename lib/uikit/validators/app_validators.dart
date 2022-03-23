import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../consants/app_constants.dart';

abstract class AppValidators {
  static FormFieldValidator<String> requiredMinLengthField(
      BuildContext context) {
    final locale = context.appLocale;
    return FormBuilderValidators.minLength(
      context,
      1,
      errorText: locale.this_required_field,
    );
  }

  static FormFieldValidator<String> requiredPhoneField(BuildContext context) {
    final locale = context.appLocale;
    return FormBuilderValidators.match(
      context,
      AppConstants.phonePattern,
      errorText: locale.this_required_field,
    );
  }

  static FormFieldValidator<String> requiredPasswordField(
      BuildContext context) {
    final locale = context.appLocale;
    return FormBuilderValidators.compose([
      FormBuilderValidators.match(
        context,
        AppConstants.passwordPattern,
        errorText: locale.error_password,
      ),
      FormBuilderValidators.minLength(
        context,
        1,
        errorText: locale.this_required_field,
      ),
    ]);
  }
}
