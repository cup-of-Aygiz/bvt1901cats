import 'package:bvt1901_practice/features/home/presentation/components/home_slider.dart';
import 'package:bvt1901_practice/features/home/presentation/components/products.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../components/category.dart';
import '../components/navigator_panel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColors = context.appColors;

    return Scaffold(
      extendBody: true, // hpme scheen идет до низа navigator_panel
      backgroundColor: myColors.white,
      body: CustomScrollView(
        slivers: [
          // SliverAppBar(
          //   expandedHeight: 250.h,
          //   pinned: true, // то что не исчезает при прокрутке
          //   flexibleSpace: FlexibleSpaceBar(
          //     background: Image.asset(
          //       "assets/images/logotip.png",
          //       fit: BoxFit.cover,
          //     ),
          //     collapseMode: CollapseMode.pin, //картинка уезжает при прокрутке
          //     title: const HomeSearch(),
          //     titlePadding: const EdgeInsetsDirectional.only(
          //         start: 0, bottom: 0), // опускаю поисковик
          //     centerTitle: true,
          //   ),
          //   elevation: 20,
          //   shadowColor: myColors.purple,
          //   backgroundColor: myColors.purple,
          // ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    const HomeSlider(), //слайдер
                    const Category(), //категории
                  ],
                );
              },
              childCount: 1, //количество повторений
            ),
          ),

          HomeProducts(), // продукты
        ],
      ),
      bottomNavigationBar: const NavigatorPanel(),
    );
  }
}
