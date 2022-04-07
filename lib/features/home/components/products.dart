// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
      'name': 'Святой источник 5л',
      'image':
          'https://thumbs.dreamstime.com/b/l-bottle-water-isolated-cutout-l-bottle-water-isolated-cutout-220077205.jpg',
      'price': 100,
    },
    {
      'name': 'Святой источник 5л',
      'image':
          'https://thumbs.dreamstime.com/b/l-bottle-water-isolated-cutout-l-bottle-water-isolated-cutout-220077205.jpg',
      'price': 100,
    },
    {
      'name': 'Святой источник 5л',
      'image':
          'https://thumbs.dreamstime.com/b/l-bottle-water-isolated-cutout-l-bottle-water-isolated-cutout-220077205.jpg',
      'price': 100,
    },
    {
      'name': 'Святой источник 5л',
      'image':
          'https://thumbs.dreamstime.com/b/l-bottle-water-isolated-cutout-l-bottle-water-isolated-cutout-220077205.jpg',
      'price': 100,
    },
    {
      'name': 'Святой источник 5л',
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

class SingleProducts extends StatefulWidget {
  final single_product_name;
  final single_product_image;
  final single_product_price;

  const SingleProducts({
    this.single_product_name,
    this.single_product_price,
    this.single_product_image,
  });

  @override
  State<SingleProducts> createState() => _SingleProductsState();
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('single_product_name', single_product_name));
    properties
        .add(DiagnosticsProperty('single_product_name', single_product_name));
  }
}

class _SingleProductsState extends State<SingleProducts> {
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    final myColors = context.appColors;
    return Container(
      width: size.width * 0.5,
      decoration: BoxDecoration(
                color: myColors.purple, borderRadius: BorderRadius.circular(30),),
      child: Column(
        children: [
          Container(
            height: 160.h,
            width: 160.w,
            decoration: BoxDecoration(
                color: myColors.ocean, borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                         image: NetworkImage(widget.single_product_image),
                         fit: BoxFit.cover),),
          ),
          ListTile(
            title: Text(widget.single_product_name),
            subtitle: Text('₽${widget.single_product_price}'),
            trailing: Container(
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                  color: myColors.purple,
                  borderRadius: BorderRadius.circular(20.r),
                ),
              child: IconButton(
                icon: Icon(
                  isLike ? Icons.favorite : Icons.favorite_border_outlined,
                  color:  isLike? myColors.red : null,
                  size: 20,
                ),
                onPressed: () {
                  setState(() {
                    isLike = !isLike;
                  });
                },
              ),
            ),
          )

          // Container(
          //   // width: size.width * 0.4,
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(30.r), color: myColors.black),
          //   child: Column(
          //     children: [
          //       Container(
          //         height: 200,
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(30.r),
          //           image: DecorationImage(
          //               image: NetworkImage(widget.single_product_image),
          //               fit: BoxFit.cover),
          //         ),
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
