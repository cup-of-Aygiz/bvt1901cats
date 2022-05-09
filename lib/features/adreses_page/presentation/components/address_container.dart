import 'package:bvt1901_practice/app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/uikit/buttons/app_transparent_button.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressContainer extends StatelessWidget {
  const AddressContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 10.h),
      child: AppTransparentButton(
        onTap: () {
          //context.appRouter.pushScreen(context, const AddressScreen());
        },
        child: Container(
          decoration: BoxDecoration(
            color: colors.white,
            borderRadius: BorderRadius.circular(10.r),
          ),
          height: 70.h,
          child: Row(
            children: [
              SizedBox(
                width: 10.w,
              ),
              Container(
                height: 30.h,
                width: 30.h,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: colors.white),
                child: const Icon(
                  Icons.location_on_outlined,
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 6.h),
                    child: Text(
                      "Тут улица и дом",
                      style: AppTextStyle.normalW700S12,
                    ),
                  ),
                  Text(
                    "Тут город",
                    style: AppTextStyle.normalW700S9,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
