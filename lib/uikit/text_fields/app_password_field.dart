import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../gen/assets.gen.dart';
import '../buttons/app_transparent_button.dart';

class AppPasswordField extends StatefulWidget {
  final String labelText;
  final String name;
  final String? initialValue;
  final Function(String?)? onChanged;
  final Function()? onTap;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final AutovalidateMode autoValidateMode;
  final EdgeInsets? padding;
  final InputBorder? inputBorder;

  const AppPasswordField({
    Key? key,
    required this.labelText,
    this.onChanged,
    this.onTap,
    this.initialValue,
    required this.name,
    this.validator,
    this.controller,
    this.autoValidateMode = AutovalidateMode.onUserInteraction,
    this.padding,
    this.inputBorder = const OutlineInputBorder(),
  }) : super(key: key);


  @override
  State<AppPasswordField> createState() => _AppPasswordFieldState();
}

class _AppPasswordFieldState extends State<AppPasswordField> {

  bool _obscureText = true;

  changeVisible() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      widget.padding ?? EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.h),
      child: FormBuilderTextField(
        obscureText: _obscureText,
        decoration: InputDecoration(
            border: widget.inputBorder,
            labelText: widget.labelText,
            errorMaxLines: 3,
            suffix: SizedBox(
              width: 30.h,
              height: 30.h,
              child: AppTransparentButton(
                onTap: () {
                  changeVisible();
                },
                child: _obscureText ? Assets.icons.icOpenEye.svg() : Assets
                    .icons
                    .icCloseEye.svg(),
              ),
            ),
        ),
        initialValue: widget.initialValue,
        name: widget.name,
        onChanged: widget.onChanged,
        onTap: widget.onTap,
        autovalidateMode: widget.autoValidateMode,
        validator: widget.validator,
        controller: widget.controller,
      ),
    );
  }
}
