import 'package:bvt1901_practice/features/home/components/products.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../components/category.dart';
import '../components/home_appbar.dart';
import '../components/home_search.dart';
import '../components/home_slider.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //отступы
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
          child: Column(children:  [
            //create appbar
            const HomeAppBar(),
            const SizedBox(
              height: 15,
            ),
            // create finder
            const HomeSearch(),
            const SizedBox(
              height: 15,
            ),
            const HomeSlider(), // исправить
            
            const Category(),
            
            Container(
               height: 200,
              child: Products()),
          ]),
        ),
      ),
    );
  }
}
