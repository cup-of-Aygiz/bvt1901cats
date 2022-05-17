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
    final width = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => BasketCubit()..init(),
      child: BlocBuilder<BasketCubit, BasketState>(
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
                        onPressed: () => context.appRouter.mayBePop(context, locale.ok),
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
            body: state.loading && state.productList.isEmpty
                ? const Center(
                    child: AppSpinKit(),
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
                        bottom: 0,
                        child: Container(
                          height: 146.h,
                          width: width,
                          color: colors.generalColor,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: AppTextButton(
                              // -20 для отступа слева и справа
                              width: width - 20.w,
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
                          ),
                        ),
                      )
                    ],
                  ),
          );
        },
      ),
    );
  }
}
