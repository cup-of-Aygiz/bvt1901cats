import 'package:bvt1901_practice/app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/features/favoite/domain/state/favorite_products_cubit.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../di/service_locator.dart';
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
  initState() async {
    super.initState();
    await getIt<FavoriteProductsCubit>().loadFavoriteProducts();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final locale = context.appLocale;
    return BlocBuilder<FavoriteProductsCubit, FavoriteProductState>(
      builder: (context, state) {
        return Scaffold(
          appBar: DefaultAppBar(
            titleText: locale.favorite_tab,
          ),
          backgroundColor: colors.generalColor,
          body: state.loading
              ? const Center(
                  child: AppSpinKit(),
                )
              : state.productList.isEmpty
                  ? Center(
                      child: Text(
                        locale.empty_favorite,
                        style: AppTextStyle.normalW400S20,
                      ),
                    )
                  : ListView(
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
        );
      },
    );
  }
}
