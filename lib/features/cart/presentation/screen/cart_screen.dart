import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';

import '../../../../uikit/buttons/app_text_button.dart';
import 'order_registration.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final router = context.appRouter;
    return Scaffold(
      appBar: const DefaultAppBar(),
      backgroundColor: colors.generalColor,
      body: AppTextButton(
        buttonText: 'перейти',
        onPressed: () => router.pushScreen(context, const OrdersRegistration(),rootNavigator: true),
      ),
    );
  }
}
