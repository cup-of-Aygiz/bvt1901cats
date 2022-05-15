import 'package:bvt1901_practice/features/favoite/domain/state/favorite_products_cubit.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../uikit/app_bars/default_app_bar.dart';
import '../../../../uikit/spinkit/spinkit.dart';
import '../../../products_catalog/presetation/components/product_container.dart';
import '../../domain/state/favorite_products_state.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final locale = context.appLocale;
    return Scaffold(
        appBar: DefaultAppBar(
          titleText: locale.favorite_tab,
        ),
        backgroundColor: colors.generalColor,
        body: BlocBuilder<FavoriteProductsCubit, FavoriteProductState>(
          buildWhen: (p,c)=>p.productList!=c.productList,
          builder: (context, state) {
            return state.loading && state.productList.isEmpty
                ? const Center(
                    child: AppSpinKit(),
                  )
                : Stack(
                    children: [
                      ListView(
                        padding: EdgeInsets.zero,
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
                          SizedBox(height: 100.h),
                        ],
                      ),
                    ],
                  );
          },
        ),
      );
  }
}
