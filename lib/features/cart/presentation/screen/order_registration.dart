import 'package:bvt1901_practice/app/presentation/theme/app_text_style.dart';
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
    return Scaffold(
      appBar: const DefaultAppBar(titleText: 'Офррмление заказа'),
      backgroundColor: colors.generalColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
        child: ListView(children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
            child: Text(
              'Товары',
              style: AppTextStyle.normalW700S24,
            ),
          ),
          Text('(Список товаров)'),
          Container(
            margin: EdgeInsets.only(top: 16.h, bottom: 8.h),
            height: 1,
            color: colors.purple,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
            child: Text(
              'Получатель',
              style: AppTextStyle.normalW700S24,
            ),
          ),
          AppTextButton(
            buttonText: 'Данные получателя',
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return Container(
                    height: 500,
                  );
                },
              );
            },
          ),
          Container(
            margin: EdgeInsets.only(top: 16.h, bottom: 8.h),
            height: 1,
            color: colors.purple,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
            child: Text(
              'Доставка',
              style: AppTextStyle.normalW700S24,
            ),
          ),
          AppTextField(
            labelText: "Адрес доставки",
            name: 'middleName',
            inputBorder: null,
            padding: EdgeInsets.symmetric(vertical: 2.h),
          ),
          Container(
            margin: EdgeInsets.only(top: 16.h, bottom: 8.h),
            height: 1,
            color: colors.purple,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
            child: Text(
              'Способ оплаты',
              style: AppTextStyle.normalW700S24,
            ),
          ),
          Text('Оплата курьеру'),
          Container(
            margin: EdgeInsets.only(top: 16.h, bottom: 8.h),
            height: 1,
            color: colors.purple,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
            child: Text(
              'Итого',
              style: AppTextStyle.normalW700S24,
            ),
          ),
          Text(
              'Товары - (кол-во штук)шт. .............. (суммарная стоимость)'),
          Text('Скидка на товары .......(минус скидка)'),
          Text('Доставка ...... (стоимость доставки)'),
          Text('Итого ...... (Итого)'),
          AppTextButton(
            buttonText: 'Оформить заказ',
            onPressed: () {},
          )
        ]),
      ),
    );
  }
}
