import 'package:bvt1901_practice/features/home/components/category.dart';
import 'package:bvt1901_practice/features/home/components/home_search.dart';
import 'package:bvt1901_practice/features/home/components/home_slider.dart';
import 'package:bvt1901_practice/features/home/components/products.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/navigator_panel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColors = context.appColors;

    return Scaffold(
      backgroundColor: myColors.blue,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 150.h,
            pinned: true, // то что не исчезает при прокрутке
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/logotip.png",
                fit: BoxFit.cover,
              ),
              collapseMode: CollapseMode.pin, //картинка уезжает при прокрутке
              title: const HomeSearch(),
              titlePadding: const EdgeInsetsDirectional.only(
                  start: 0, bottom: 0), // опускаю поисковик
              centerTitle: true,
            ),
            elevation: 20,
            shadowColor: myColors.purple,
            backgroundColor: myColors.purple,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Column(
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  HomeSlider(),                            //слайдер
                  Category(),                             //категории
                ],
              );
            },
            childCount: 1, //количество повторений
          )),

          // const FlexibleSpaceBar(
            
          //   title: Category(),
          // ),

          HomeProducts(),                                 // продукты
        ],
      ),
      bottomNavigationBar: const NavigatorPanel(),
    );
  }
}
