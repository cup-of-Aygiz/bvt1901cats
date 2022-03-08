import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = context.appLocale;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.blue,
        child: Text(locale.aqua),
      ),
    );
  }
}
