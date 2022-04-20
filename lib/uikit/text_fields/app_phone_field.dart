import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AppPhoneTextField extends StatelessWidget {
  final String name;
  final String? labelText;
  final TextInputAction? textInputAction;
  final String? initialValue;
  final TextEditingController? textEditingController;
  final bool validate;
  final EdgeInsets? padding;
  final bool readOnly;
  final InputBorder? inputBorder;
  final Function(String?)? onChanged;

  const AppPhoneTextField({
    Key? key,
    required this.name,
    this.padding,
    this.labelText,
    this.textInputAction,
    this.initialValue,
    this.textEditingController,
    this.validate = true,
    this.readOnly = false,
    this.inputBorder = const OutlineInputBorder(),
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = context.appLocale;

    return Padding(
      padding: padding ?? EdgeInsets.symmetric(vertical: 10.h),
      child: FormBuilderTextField(
        initialValue: initialValue,
        controller: textEditingController,
        onChanged: onChanged,
        readOnly: readOnly,
        name: name,
        textInputAction: textInputAction,
        inputFormatters: [
          MaskTextInputFormatter(
              mask: '+7(###)###-##-##', filter: {'#': RegExp(r'[0-9]')})
        ],
        keyboardType: TextInputType.phone,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          border: inputBorder,
          labelText: locale.phone,
          hintText: '+7(',
        ),
        validator: validate
            ? FormBuilderValidators.compose([
          FormBuilderValidators.required(context,
              errorText: locale.this_required_field),
          FormBuilderValidators.minLength(context, 15,
              errorText: locale.incorrect_format)
        ])
            : null,
      ),
    );
  }
}
