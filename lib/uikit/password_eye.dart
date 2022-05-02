import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
import 'buttons/app_transparent_button.dart';

class PasswordEye extends StatefulWidget {
  const PasswordEye({Key? key}) : super(key: key);

  @override
  State<PasswordEye> createState() => _PasswordEyeState();
}

class _PasswordEyeState extends State<PasswordEye> {
  bool visible = false;

  changeVisible() {
    setState(() {
      if (visible) {
        visible = false;
      } else {
        visible = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: AppTransparentButton(
        onTap: () {
          changeVisible();
        },
        child: visible ? Assets.icons.icOpenEye.svg() : Assets.icons.icCloseEye.svg(),
      ),
    );
  }
}
