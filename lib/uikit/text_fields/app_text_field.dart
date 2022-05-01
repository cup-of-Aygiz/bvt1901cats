import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  final String labelText;
  final String name;
  final bool obscureText;
  final String? initialValue;
  final Function(String?)? onChanged;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final AutovalidateMode autoValidateMode;
  final EdgeInsets? padding;
  final InputBorder? inputBorder;

  const AppTextField({
    Key? key,
    required this.labelText,
    this.obscureText = false,
    this.onChanged,
    this.initialValue,
    required this.name,
    this.validator,
    this.controller,
    this.autoValidateMode = AutovalidateMode.onUserInteraction,
    this.padding,
    this.inputBorder = const OutlineInputBorder(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.h),
      child: FormBuilderTextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          border: inputBorder,
          labelText: labelText,
          errorMaxLines: 3,
        ),
        initialValue: initialValue,
        name: name,
        onChanged: onChanged,
        autovalidateMode: autoValidateMode,
        validator: validator,
        controller: controller,
      ),
    );
  }
}
