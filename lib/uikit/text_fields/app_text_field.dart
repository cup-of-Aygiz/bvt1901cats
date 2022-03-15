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

  const AppTextField(
      {Key? key,
      required this.labelText,
      this.obscureText = false,
      this.onChanged,
      this.initialValue,
      required this.name,
      this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: FormBuilderTextField(
            obscureText: obscureText,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: labelText,
            ),
            initialValue: initialValue,
            name: name,
            onChanged: onChanged,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: validator,
          ),
          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        ),
      ],
    );
  }
}
