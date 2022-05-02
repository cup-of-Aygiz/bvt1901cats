import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  final String labelText;
  final String name;
  final bool readOnly;
  final bool obscureText;
  final String? initialValue;
  final Function(String?)? onChanged;
  final Function()? onTap;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final AutovalidateMode autoValidateMode;
  final EdgeInsets? padding;
  final InputBorder? inputBorder;
  final Widget? suffix;

  const AppTextField({
    Key? key,
    required this.labelText,
    this.obscureText = false,
    this.onChanged,
    this.onTap,
    this.initialValue,
    required this.name,
    this.validator,
    this.controller,
    this.autoValidateMode = AutovalidateMode.onUserInteraction,
    this.padding,
    this.inputBorder = const OutlineInputBorder(),
    this.readOnly = false,
    this.suffix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return Padding(
      padding:
          padding ?? EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h),
      child: FormBuilderTextField(
        obscureText: obscureText,
        style: TextStyle(
          color: readOnly ? colors.grey : colors.black,
        ),
        decoration: InputDecoration(
          border: inputBorder,
          labelText: labelText,
          errorMaxLines: 3,
          suffix: suffix,
        ),
        initialValue: initialValue,
        name: name,
        onChanged: onChanged,
        onTap: onTap,
        autovalidateMode: autoValidateMode,
        validator: validator,
        controller: controller,
        readOnly: readOnly,
      ),
    );
  }
}
