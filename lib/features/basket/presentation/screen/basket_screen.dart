import 'package:bvt1901_practice/app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/features/basket/domain/state/basket_state.dart';
import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/uikit/buttons/app_text_button.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../uikit/spinkit/spinkit.dart';
import '../../../order_registration/presentation/screens/order_registration.dart';
import '../../domain/state/basket_cubit.dart';
import '../components/basket_product_container.dart';

class BasketScreen extends StatefulWidget {
  const BasketScreen({Key? key}) : super(key: key);

  @override
  State<BasketScreen> createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final locale = context.appLocale;
    return BlocBuilder<BasketCubit, BasketState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: colors.generalColor,
          appBar: DefaultAppBar(
            titleText: locale.cart_tab,
            action: IconButton(
              onPressed: () => showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: Text(locale.clear_basket),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () =>
                          context.appRouter.mayBePop(context, locale.ok),
                      child: Text(locale.yes_clear),
                    ),
                    TextButton(
                      onPressed: () =>
                          context.appRouter.mayBePop(context, locale.cancel),
                      child: Text(locale.no_clear),
                    ),
                  ],
                ),
              ),
              icon: Assets.icons.icBasket.svg(),
            ),
          ),
          body: state.loading
              ? const Center(
                  child: AppSpinKit(),
                )
              : state.productList.isEmpty
                  ? Center(
                      child: Text(
                        locale.empty_basket,
                        style: AppTextStyle.normalW400S16,
                      ),
                    )
                  : Stack(
                      children: [
                        ListView(
                          padding: EdgeInsets.zero,
                          physics: const BouncingScrollPhysics(),
                          children: [
                            for (int i = 0; i < state.productList.length; i++)
                              BasketProductContainer(
                                  productEntity: state.productList[i]),
                            SizedBox(height: 150.h),
                          ],
                        ),
                        Positioned(
                          bottom: 120.h,
                          left: 10.w,
                          right: 10.w,
                          child: AppTextButton(
                            height: 40.h,
                            buttonText:
                                '${locale.place_an_order} ${state.totalPrice} ₽',
                            onPressed: () {
                              context.appRouter.pushScreen(
                                context,
                                OrdersRegistration(
                                  price: state.totalPrice,
                                ),
                                rootNavigator: true,
                              );
                            },
                          ),
                        )
                      ],
                    ),
        );
      },
    );
  }
}
