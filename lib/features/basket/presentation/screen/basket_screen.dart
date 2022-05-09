import 'package:bvt1901_practice/features/basket/domain/state/basket_state.dart';
import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/uikit/buttons/app_text_button.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../uikit/spinkit/spinkit.dart';
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
                    title: const Text('Очистить корзину?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'OK'),
                        child: const Text('Очистить'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancel'),
                        child: const Text('Оставить'),
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
                      NotificationListener(
                        child: ListView(
                          children: [
                            Center(
                              child: Wrap(
                                children: [
                                  for (var item in state.productList)
                                    BasketProductContainer(
                                      productEntity: item,
                                    ),
                                ],
                              ),
                            ),
                            if (state.loading && state.productList.isNotEmpty)
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 20.h),
                                child: const AppSpinKit(),
                              ),
                          ],
                        ),
                        onNotification: (scrollEnd) {
                          context.read<BasketCubit>().loadProducts();
                          return true;
                        },
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
                              width: width - 20.w,
                              height: 40.h,
                              buttonText: '${locale.place_an_order}   ${state.totalPrice} ₽',
                              onPressed: () {},
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
