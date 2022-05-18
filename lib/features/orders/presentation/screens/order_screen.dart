import 'package:bvt1901_practice/app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/features/orders/domain/state/orders_cubit.dart';
import 'package:bvt1901_practice/features/orders/domain/state/orders_state.dart';
import 'package:bvt1901_practice/features/orders/presentation/components/order_container.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../uikit/app_bars/default_app_bar.dart';
import '../../../../uikit/spinkit/spinkit.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final locale = context.appLocale;
    return Scaffold(
      appBar: DefaultAppBar(
        titleText: locale.my_orders,
      ),
      backgroundColor: colors.generalColor,
      body: BlocBuilder<OrdersCubit, OrdersState>(
        builder: (context, state) {
          return state.loading
              ? const Center(
                  child: AppSpinKit(),
                )
              : state.ordersList.isEmpty
                  ? Center(
                      child: Text(
                        locale.empty_orders_list,
                        style: AppTextStyle.normalW700S18,
                      ),
                    )
                  : PageView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        for (var item in state.ordersList)
                          OrderContainer(orderEntity: item),
                      ],
                    );
        },
      ),
    );
  }
}
