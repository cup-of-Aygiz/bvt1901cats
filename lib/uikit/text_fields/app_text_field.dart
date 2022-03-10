import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  final String myText;

  const AppTextField({Key? key, required this.myText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: FormBuilderTextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: myText,
            ),
            name: myText,
          ),
          margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          //alignment: Alignment.topLeft,
        ),
      ],
    );
  }
}
