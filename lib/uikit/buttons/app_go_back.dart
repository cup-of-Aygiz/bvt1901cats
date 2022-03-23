import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';

class AppGoBackButton extends StatelessWidget {
  final Color? color;
  const AppGoBackButton({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return IconButton(
      onPressed: () {
        context.appRouter.mayBePop(context);
      },
      icon: Icon(
        Icons.arrow_back_outlined,
        color: color ?? colors.black,
      ),
    );
  }
}
