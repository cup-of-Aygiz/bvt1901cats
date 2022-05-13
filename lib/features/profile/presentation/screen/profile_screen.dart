import 'package:bvt1901_practice/features/map_page/presentation/screens/map_screen.dart';
import 'package:bvt1901_practice/features/person_data/presentation/screens/person_data_screen.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/presentation/theme/app_text_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../uikit/app_bars/default_app_bar.dart';
import '../../../login/presentation/screens/login_screen.dart';
import '../../../orders/presentation/screens/order_screen.dart';
import '../../../seles/presentation/screens/sales_screen.dart';
import '../components/profile_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locale = context.appLocale;
    final router = context.appRouter;
    final colors = context.appColors;

    return Scaffold(
      backgroundColor: colors.generalColor,
      appBar: DefaultAppBar(
        titleText: locale.your_profile,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.h),
            child: Text(
              locale.project_name,
              style: AppTextStyle.normalW200S34,
              textAlign: TextAlign.center,
            ),
          ),
          ProfileButton(
            icon: Assets.icons.icShopingBag.svg(width: 30.h, height: 30.h),
            text: locale.my_orders,
            onTap: () {
              router.pushScreen(context, const OrdersScreen());
            },
          ),
          ProfileButton(
            icon: Assets.icons.icPerson.svg(width: 30.h, height: 30.h),
            text: locale.my_data,
            onTap: () {
              router.pushScreen(context, const PersonDataScreen());
            },
          ),
          ProfileButton(
            icon: Assets.icons.icGeolocation.svg(width: 30.h, height: 30.h),
            text: locale.my_address,
            onTap: () {
              router.pushScreen(context, const MapScreen());
            },
          ),
          ProfileButton(
            icon: Assets.icons.icSales.svg(width: 30.h, height: 30.h),
            text: locale.my_discounts,
            onTap: () {
              router.pushScreen(context, const SalesScreen());
            },
          ),
          ProfileButton(
            icon: Assets.icons.icLeave.svg(width: 30.h, height: 30.h),
            text: locale.leave_account,
            onTap: () {
              router.pushScreen(context, const LoginScreen());
            },
          ),
        ],
      ),
    );
  }
}
