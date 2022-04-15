import 'package:bvt1901_practice/features/products_catalog/presetation/components/product_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../uikit/spinkit/spinkit.dart';
import '../../domain/state/catalog_cubit.dart';
import '../../domain/state/catalog_state.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatalogCubit, CatalogState>(
      builder: (context, state) {
        return state.loading && state.productList.isEmpty
            ? const Center(
                child: AppSpinKit(),
              )
            : NotificationListener<ScrollEndNotification>(
                child: ListView(
                  children: [
                    Wrap(
                      children: [
                        for (var item in state.productList)
                          ProductContainer(
                            productEntity: item,
                          ),
                      ],
                    ),
                    if (state.loading && state.productList.isNotEmpty)
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 20.h),
                        child: const AppSpinKit(),
                      ),
                  ],
                ),
                onNotification: (scrollEnd) {
                  context.read<CatalogCubit>().loadProducts();

                  return true;
                },
              );
      },
    );
  }
}
