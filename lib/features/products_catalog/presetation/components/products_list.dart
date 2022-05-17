import 'package:bvt1901_practice/features/products_catalog/presetation/components/product_container.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../uikit/spinkit/spinkit.dart';
import '../../../home/presentation/components/slider_item.dart';
import '../../domain/state/catalog_cubit.dart';
import '../../domain/state/catalog_state.dart';

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList>
    with AutomaticKeepAliveClientMixin {
  late ScrollController _controller;
  bool _isLoadMoreRunning = false;

  @override
  bool get wantKeepAlive => true;

  @override
  initState() {
    super.initState();
    _controller = ScrollController()..addListener(_loadMore);
  }

  @override
  void dispose() {
    _controller.removeListener(_loadMore);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<CatalogCubit, CatalogState>(
      builder: (context, state) {
        return state.loading && state.productList.isEmpty
            ? const Center(
                child: AppSpinKit(),
              )
            : ListView(
                padding: EdgeInsets.zero,
                controller: _controller,
                children: [
                  CarouselSlider(
                    options: CarouselOptions(height: 150.h),
                    items: const [
                      SliderItem(
                          text:
                              'https://hozvo.ru/storage/ads_bloknot_preview/1477750385.jpg'),
                      SliderItem(
                          text:
                              'https://vodavorle.ru/uploads/news/thumbs/70_1580311462.jpg'),
                      SliderItem(
                          text:
                              'https://vodavorle.ru/uploads/news/thumbs/70_1580311438.jpg'),
                    ],
                  ),
                  Center(
                    child: Wrap(
                      children: [
                        for (var item in state.productList)
                          ProductContainer(
                            key: Key(item.name +
                                item.image +
                                state.productList
                                    .indexWhere((element) => element == item)
                                    .toString()),
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
              );
      },
    );
  }

  void _loadMore() async {
    if (_controller.position.extentAfter < 300 && !_isLoadMoreRunning) {
      setState(() {
        _isLoadMoreRunning = true; // Display a progress indicator at the bottom
      });
      context.read<CatalogCubit>().loadProducts();
      setState(() {
        _isLoadMoreRunning = false;
      });
    }
  }
}
