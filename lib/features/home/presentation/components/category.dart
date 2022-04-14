import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryProduct(
            press: () {},
            urlImage:
                'https://cdn-icons-png.flaticon.com/512/1061/1061002.png?w=740',
            text: '19 литров',
          ),
          CategoryProduct(
            press: () {},
            urlImage:
                'https://cdn-icons-png.flaticon.com/512/1217/1217024.png?w=740',
            text: '5 литров',
          ),
          CategoryProduct(
            press: () {},
            urlImage:
                'https://cdn-icons-png.flaticon.com/512/1050/1050498.png?w=740',
            text: '1,5 литра',
          ),
          CategoryProduct(
            press: () {},
            urlImage:
                'https://cdn-icons-png.flaticon.com/512/939/939235.png?w=740',
            text: '1 литр',
          ),
          CategoryProduct(
            press: () {},
            urlImage:
                'https://cdn-icons-png.flaticon.com/512/1079/1079131.png?w=740',
            text: '0,5 литра',
          ),
          CategoryProduct(
            press: () {},
            urlImage:
                'https://cdn-icons-png.flaticon.com/512/907/907926.png?w=740',
            text: '0,25 литра',
          ),
          CategoryProduct(
            press: () {},
            urlImage:
                'https://cdn-icons-png.flaticon.com/512/1162/1162898.png?w=740',
            text: 'Куллеры',
          ),
          CategoryProduct(
            press: () {},
            urlImage:
                'https://cdn-icons-png.flaticon.com/512/940/940697.png?w=740',
            text: 'Помпы',
          ),
        ],
      ),
    );
  }
}

class CategoryProduct extends StatelessWidget {
  const CategoryProduct({
    Key? key,
    required this.urlImage,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String urlImage, text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    final myColors = context.appColors;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.w),
      child: GestureDetector(
        onTap: press,
        child: Chip(
            backgroundColor: myColors.purple,
            label: Row(
              children: [
                Text(text),
                Image.network(
                  urlImage,
                  height: 40.h,
                ),
              ],
            )),
      ),
    );
  }
}
