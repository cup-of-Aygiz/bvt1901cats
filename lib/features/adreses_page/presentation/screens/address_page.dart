import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/uikit/buttons/app_text_button.dart';
import 'package:bvt1901_practice/uikit/text_fields/app_text_field.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'addresses_page.dart';

class AddressScreen extends StatelessWidget {

  final String address;
  const AddressScreen({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final locale = context.appLocale;
    final double _width = MediaQuery.of(context).size.width;
    final double _halfWidth = _width / 2 - 20.w;
    return Scaffold(
      appBar: DefaultAppBar(
        titleText: locale.choose_address,
      ),
      backgroundColor: colors.generalColor,
      body: Column(
        children: [
          AppTextField(
            labelText: locale.address,
            readOnly: true,
            name: "address",
            initialValue: address,
            maxLines: 3,
            padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 6.w),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTextField(
                labelText: locale.entrance,
                name: "entrance",
                width: _halfWidth,
                padding: EdgeInsets.only(bottom: 10.h, left: 6.h),
              ),
              AppTextField(
                labelText: locale.intercom,
                name: "intercom",
                width: _halfWidth,
                padding: EdgeInsets.only(bottom: 10.h, left: 6.h),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTextField(
                labelText: locale.flat,
                name: "flat",
                width: _halfWidth,
                padding: EdgeInsets.only(bottom: 10.h, left: 6.h),
              ),
              AppTextField(
                labelText: locale.floor,
                name: "floor",
                width: _halfWidth,
                padding: EdgeInsets.only(bottom: 10.h, left: 6.h),
              ),
            ],
          ),
          AppTextField(
            labelText: locale.comment,
            name: "comment",
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 6.w),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 6.w),
            child: SizedBox(
              width: _width,
              child: AppTextButton(
                buttonText: locale.save_changes,
                onPressed: () {
                  context.appRouter.pushScreen(context, const AddressesScreen());
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
