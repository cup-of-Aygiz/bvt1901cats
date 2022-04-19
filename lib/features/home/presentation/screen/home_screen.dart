import 'package:bvt1901_practice/features/home/presentation/components/slider_item.dart';
import 'package:bvt1901_practice/features/search/presentation/screens/search_screen.dart';
import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
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
      body: Stack(
        children: [
          BackgroundProgressWidget(
              colorOne: colors.darkOcean,
              length: 6,
              child: SafeArea(
                top: false,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.h, horizontal: 10.h),
                      child: Row(
                        children: [
                          Container(
                            child: FormBuilderTextField(
                              name: 'find',
                              decoration: InputDecoration(
                                hintText: locale.search,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.r),
                                ),
                              ),
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(30.r),
                              color: colors.white,
                            ),
                            width: 290.w,
                            height: 46.h,
                            //color: colors.white,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10.w),
                            width: 46.h,
                            height: 46.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: colors.white,
                              border: Border.all(
                                width: 1,
                                color: colors.grey,
                                style: BorderStyle.solid,
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {
                                context.appRouter
                                    .pushScreen(context, const SearchScreen());
                              },
                              icon: const Icon(
                                Icons.search,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.h, vertical: 86.h),
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
                      padding: EdgeInsets.only(top: 220.h),
                      child: const ProductList(),
                    ),
                  ],
                ),
              )),
        ],
      ),
      backgroundColor: colors.generalColor,
    );
  }
}
