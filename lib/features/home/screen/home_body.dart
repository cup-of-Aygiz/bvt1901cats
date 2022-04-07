import 'package:bvt1901_practice/features/home/components/products.dart';
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
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      child: Column(children:  [
        //create appbar
        const HomeAppBar(),
        SizedBox(
          height: 16.h,
        ),
        // create finder
        const HomeSearch(),
        SizedBox(
          height: 16.h,
        ),
        const HomeSlider(), // исправить
        
        const Category(),
        
        SizedBox(
           height: 200.h,
          child: HomeProducts()),
      ]),
    );
  }
}
