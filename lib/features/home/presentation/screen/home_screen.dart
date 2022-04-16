import 'package:bvt1901_practice/features/home/presentation/components/slider_item.dart';
import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../products_catalog/presetation/components/products_list.dart';
import '../../../registration/presentation/components/proggres_gradient.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final locale = context.appLocale;
    return Scaffold(
      appBar: DefaultAppBar(
        titleText: locale.project_name,
      ),
      body: BackgroundProgressWidget(
          colorOne: colors.darkOcean,
          length: 4,
          child: SafeArea(
            top: false,
            child: Stack(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 10.h),
                  child: CarouselSlider(
                    options: CarouselOptions(height: 130.h),
                    items: [
                      SliderItem(text: locale.free_delivery),
                      SliderItem(text: locale.free_delivery),
                      SliderItem(text: locale.free_delivery),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 150.h),
                  child: const Expanded(child: ProductList()),
                ),
                BackgroundProgressWidget(
                  length: 20,
                  colorThree: colors.ocean,
                  colorOne: colors.lightOcean,
                  colorTwo: colors.darkOcean,
                  child: const SizedBox.shrink(),
                )
              ],
            ),
          )),
    );
  }
}
