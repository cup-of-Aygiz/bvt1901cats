// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
}

class _SingleProductsState extends State<SingleProducts> {
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    final myColors = context.appColors;
    return Container(
      decoration: BoxDecoration(
        color: myColors.purple,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Column(
        children: [
          Container(
            height: 160.h,
            width: 160.w,
            margin:
                EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h), // границы
            decoration: BoxDecoration(
              color: myColors.ocean,
              borderRadius: BorderRadius.circular(30.r),
              image: DecorationImage(
                  image: NetworkImage(widget.single_product_image),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
            title: Text(widget.single_product_name),
            subtitle: Text('₽${widget.single_product_price}'),
            trailing: Container(
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                color: myColors.purple,
              ),
              child: IconButton(
                icon: Icon(
                  isLike ? Icons.favorite : Icons.favorite_border_outlined,
                  color: isLike ? myColors.red : null,
                  size: 20.h,
                ),
                onPressed: () {
                  setState(
                    () {
                      isLike = !isLike;
                    },
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
