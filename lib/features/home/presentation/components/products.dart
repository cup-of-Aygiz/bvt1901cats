// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:bvt1901_practice/features/home/presentation/components/single_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeProducts extends StatelessWidget {
  final productList = [
    {
      'name': 'Святой источник 5л',
      'image':
          'https://thumbs.dreamstime.com/b/l-bottle-water-isolated-cutout-l-bottle-water-isolated-cutout-220077205.jpg',
      'price': 100,
    },
    {
      'name': 'Святой источник 19л',
      'image':
          'https://thumbs.dreamstime.com/b/l-bottle-water-isolated-cutout-l-bottle-water-isolated-cutout-220077205.jpg',
      'price': 325,
    },
    {
      'name': 'Святой источник 115л',
      'image':
          'https://thumbs.dreamstime.com/b/l-bottle-water-isolated-cutout-l-bottle-water-isolated-cutout-220077205.jpg',
      'price': 100,
    },
    {
      'name': 'Святой источник 11115л',
      'image':
          'https://thumbs.dreamstime.com/b/l-bottle-water-isolated-cutout-l-bottle-water-isolated-cutout-220077205.jpg',
      'price': 100,
    },
    {
      'name': 'Святой источник 3л',
      'image':
          'https://thumbs.dreamstime.com/b/l-bottle-water-isolated-cutout-l-bottle-water-isolated-cutout-220077205.jpg',
      'price': 100,
    },
    {
      'name': 'Святой источник 25л',
      'image':
          'https://thumbs.dreamstime.com/b/l-bottle-water-isolated-cutout-l-bottle-water-isolated-cutout-220077205.jpg',
      'price': 100,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
              child: SingleProducts(
                single_product_name: productList[index]['name'],
                single_product_image: productList[index]['image'],
                single_product_price: productList[index]['price'],
              ),
            );
          },
          childCount: productList.length,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65,
        ));
  }
}
