import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/cupertino.dart';

class AppGestureDetector extends StatelessWidget {
  final String text;
  final TextStyle style;
  final VoidCallback onPressed;

  const AppGestureDetector(
      {Key? key,
      required this.text,
      required this.style,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColors = context.appColors;
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        text,
        style: style.copyWith(color: myColors.black)
        ,
      ),
    );
  }
}
