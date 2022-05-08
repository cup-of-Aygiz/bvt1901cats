import 'package:bvt1901_practice/features/favoite/domain/state/favorite_products_cubit.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../uikit/app_bars/default_app_bar.dart';
import '../../../../uikit/spinkit/spinkit.dart';
import '../../../products_catalog/presetation/components/product_container.dart';
import '../../domain/state/favorite_products_state.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final locale = context.appLocale;
    return BlocProvider(
      create: (context) => FavoriteProductsCubit()..init(),
      child: BlocBuilder<FavoriteProductsCubit, FavoriteProductState>(
        builder: (context, state) {
          return Scaffold(
            appBar: DefaultAppBar(
              titleText: locale.favorite_tab,
            ),
            backgroundColor: colors.generalColor,
            body: NotificationListener<ScrollEndNotification>(
              child: Stack(
                children: [
                  ListView(
                    children: [
                      Center(
                        child: Wrap(
                          children: [
                            for (var item in state.productList)
                              ProductContainer(
                                productEntity: item,
                                isLiked: true,
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
                ],
              ),
              onNotification: (scrollEnd) {
                context.read<FavoriteProductsCubit>().loadFavoriteProducts();
                return true;
              },
            ),
          );
        },
      ),
    );
  }
}
