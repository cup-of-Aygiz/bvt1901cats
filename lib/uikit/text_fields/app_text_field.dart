import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  final String labelText;
  final String name;
  final String? initialValue;
  final Function(String?)? onChanged;

  const AppTextField(
      {Key? key,
      required this.labelText,
      this.onChanged,
      this.initialValue,
      required this.name,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: FormBuilderTextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: labelText,
            ),
            initialValue: initialValue,
            name: name,
            onChanged: onChanged,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.minLength(context, 3,
                  errorText: 'значние больше 3'),
            ]),
          ),
          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        ),
      ],
    );
  }
}
