import 'package:flutter/cupertino.dart';

class AppGestureDetector extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;

  const AppGestureDetector(
      {Key? key,
      required this.onPressed,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: onPressed,
      child: child,
    );
  }
}
