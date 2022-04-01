import 'package:flutter/material.dart';
import '../../app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';

class NoBackgroundButton extends StatelessWidget {
  const NoBackgroundButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    required this.style,
    this.textColor,
  }) : super(key: key);
  final String buttonText;
  final Color? textColor;
  final VoidCallback onPressed;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {

    final myColors = context.appColors;

    return TextButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor:
          MaterialStateProperty.all<Color>(myColors.white),
        ),
      child: Text(
        buttonText,
        style: style.copyWith(color: myColors.black),
      ),
    );
  }
}
