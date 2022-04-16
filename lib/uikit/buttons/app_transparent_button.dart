import 'package:flutter/cupertino.dart';

class AppTransparentButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;

  const AppTransparentButton({
    Key? key,
    required this.onTap,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: child,
    );
  }
}
