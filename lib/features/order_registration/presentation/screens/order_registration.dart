import 'package:bvt1901_practice/uikit/buttons/app_text_button.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../uikit/app_bars/default_app_bar.dart';
import '../../../../uikit/text_fields/app_text_field.dart';

class OrdersRegistration extends StatelessWidget {
  const OrdersRegistration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final locale = context.appLocale;
    return Scaffold(
      appBar: DefaultAppBar(titleText: locale.checkout),
      backgroundColor: colors.generalColor,
      body: Stack(
        children: [
          Column(
            children: [
              AppTextField(
                labelText: locale.delivery_address,
                name: 'deliveryAddress',
                inputBorder: null,
                padding: EdgeInsets.symmetric(vertical: 2.h),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        locale.payment_method,
                      ),
                      Text(
                        locale.cost_of_products,
                      ),
                      Text(
                        locale.cost_of_delivery,
                      ),
                      Text(
                        locale.total,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(locale.payment_to_courier),
                      Text(locale.payment_to_courier),
                      Text(locale.payment_to_courier),
                      Text(locale.payment_to_courier),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 120.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: AppTextButton(
                width: 340.w,
                buttonText: 'Оформить заказ',
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
