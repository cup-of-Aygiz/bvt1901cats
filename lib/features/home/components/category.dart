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
      height: 80,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryProduct(
            press: (){},
            urlImage: 'https://thumbs.dreamstime.com/b/l-bottle-water-isolated-cutout-l-bottle-water-isolated-cutout-220077205.jpg',
            text: '5л',
          ),
          CategoryProduct(
            press: (){},
            urlImage: 'https://thumbs.dreamstime.com/b/l-bottle-water-isolated-cutout-l-bottle-water-isolated-cutout-220077205.jpg',
            text: '5лerrer',
          ),
          CategoryProduct(
            press: (){},
            urlImage: 'https://thumbs.dreamstime.com/b/l-bottle-water-isolated-cutout-l-bottle-water-isolated-cutout-220077205.jpg',
            text: '5dadadvadvлss',
          ),
          CategoryProduct(
            press: (){},
            urlImage: 'https://thumbs.dreamstime.com/b/l-bottle-water-isolated-cutout-l-bottle-water-isolated-cutout-220077205.jpg',
            text: '5л',
          ),
          CategoryProduct(
            press: (){},
            urlImage: 'https://thumbs.dreamstime.com/b/l-bottle-water-isolated-cutout-l-bottle-water-isolated-cutout-220077205.jpg',
            text: '5л',
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
      padding: EdgeInsets.symmetric( horizontal: 5.h),
      child: GestureDetector(
        onTap: press,
        child: Chip(
          backgroundColor: myColors.blue,
            label: Row(
          children: [
            Text(text),
            Image.network(
              urlImage,
              height: 40,
            ),
          ],
        )),
      ),
    );
  }
}
