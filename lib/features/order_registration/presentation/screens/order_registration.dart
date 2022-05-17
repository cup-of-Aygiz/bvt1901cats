import 'package:bvt1901_practice/features/adreses_page/presentation/screens/addresses_page.dart';
import 'package:bvt1901_practice/uikit/buttons/app_text_button.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/presentation/theme/app_text_style.dart';
import '../../../../uikit/app_bars/default_app_bar.dart';
import '../../../../uikit/text_fields/app_text_field.dart';

class OrdersRegistration extends StatelessWidget {
  final double price;

  const OrdersRegistration({
    Key? key,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final locale = context.appLocale;
    final width = MediaQuery.of(context).size.width;
    //вычитаем совокупность отступов
    final halfWidth = width / 2.w - 12;
    return Scaffold(
      appBar: DefaultAppBar(titleText: locale.checkout),
      backgroundColor: colors.generalColor,
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 20.h),
              AppTextField(
                readOnly: true,
                name: "address",
                initialValue: locale.address,
                maxLines: 3,
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 12.w),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppTextField(
                    initialValue: locale.entrance,
                    name: "entrance",
                    width: halfWidth,
                    readOnly: true,
                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                  ),
                  AppTextField(
                    initialValue: locale.intercom,
                    name: "intercom",
                    width: halfWidth,
                    readOnly: true,
                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppTextField(
                    initialValue: locale.flat,
                    name: "flat",
                    width: halfWidth,
                    readOnly: true,
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
                  ),
                  AppTextField(
                    initialValue: locale.floor,
                    name: "floor",
                    width: halfWidth,
                    readOnly: true,
                    padding: EdgeInsets.symmetric(horizontal: 6.w),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              AppTextButton(
                //вычитаем совоупность отступов
                width: width-40.w,
                buttonText: locale.choose_address,
                onPressed: () {
                  context.appRouter.pushScreen(context, const AddressesScreen());
                },
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          locale.payment_method,
                          style: AppTextStyle.normalW500S14,
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          locale.cost_of_delivery,
                          style: AppTextStyle.normalW500S14,
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          locale.cost_of_products,
                          style: AppTextStyle.normalW500S14,
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          locale.total,
                          style: AppTextStyle.normalW700S18,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          locale.payment_to_courier,
                          style: AppTextStyle.normalW500S14,
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          locale.free,
                          style: AppTextStyle.normalW500S14,
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          '$price ₽',
                          style: AppTextStyle.normalW500S14,
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          '$price ₽',
                          style: AppTextStyle.normalW700S18,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 80.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: AppTextButton(
                //вычитаем совоупность отступов
                width: width-40.w,
                buttonText: locale.checkout,
                onPressed: () {
                  context.appRouter.mayBePop(context);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
