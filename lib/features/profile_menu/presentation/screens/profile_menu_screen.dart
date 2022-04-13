import 'package:bvt1901_practice/features/login/presentation/screens/login_screen.dart';
import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/uikit/buttons/app_text_button.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/presentation/theme/app_text_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../uikit/buttons/app_button_detector.dart';
import '../../../registration/presentation/components/proggres_gradient.dart';

class ProfileMenuScreen extends StatelessWidget {
  const ProfileMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = context.appLocale;
    final router = context.appRouter;
    final colors = context.appColors;

    return Scaffold(
        appBar: DefaultAppBar(
          titleText: locale.your_profile,
        ),
        body: BackgroundProgressWidget(
            length: 3,
            child: ListView(
              children: [
                Container(
                  width: double.infinity,
                  height: 70.h,
                  color: colors.blue,
                  margin:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.symmetric(horizontal: 10.w)),
                      Assets.icons.icFreeDelivery
                          .svg(width: 50.w, height: 50.h),
                      Text(locale.free_delivery),
                    ],
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60.h,
                  child: AppGestureDetector(
                    onPressed: () {
                      router.pushScreen(context, const LoginScreen());
                    },
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w)),
                        Assets.icons.icShopingBag
                            .svg(width: 30.w, height: 30.h),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w)),
                        Text(
                          locale.my_orders,
                          style: AppTextStyle.normalW400S16,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60.h,
                  child: AppGestureDetector(
                    onPressed: () {
                      router.pushScreen(context, const LoginScreen());
                    },
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w)),
                        Assets.icons.icPerson.svg(width: 30.w, height: 30.h),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w)),
                        Text(
                          locale.my_data,
                          style: AppTextStyle.normalW400S16,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60.h,
                  child: AppGestureDetector(
                    onPressed: () {
                      router.pushScreen(context, const LoginScreen());
                    },
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w)),
                        Assets.icons.icGeolocation
                            .svg(width: 30.w, height: 30.h),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w)),
                        Text(
                          locale.my_address,
                          style: AppTextStyle.normalW400S16,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60.h,
                  child: AppGestureDetector(
                    onPressed: () {
                      router.pushScreen(context, const LoginScreen());
                    },
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w)),
                        Assets.icons.icHeartFavorite
                            .svg(width: 30.w, height: 30.h),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w)),
                        Text(
                          locale.my_favorite,
                          style: AppTextStyle.normalW400S16,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60.h,
                  child: AppGestureDetector(
                    onPressed: () {
                      router.pushScreen(context, const LoginScreen());
                    },
                    child: Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w)),
                        Assets.icons.icSales.svg(width: 30.w, height: 30.h),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w)),
                        Text(
                          locale.my_discounts,
                          style: AppTextStyle.normalW400S16,
                        )
                      ],
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 40.h)),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.h),
                  child: AppTextButton(
                      buttonText: locale.leave_account, onPressed: () {}),
                )
              ],
            )
        )
    );
  }
}
