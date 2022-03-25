
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';

import 'components/navigator_panel.dart';
import 'screen/home_body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final myColors = context.appColors;

    return Scaffold(
      backgroundColor: myColors.blue,
      body: const HomeBody(),
      bottomNavigationBar: const NavigatorPanel(),
    );
  }
}

