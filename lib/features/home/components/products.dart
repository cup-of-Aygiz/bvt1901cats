// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Products extends StatelessWidget {
  final ptoductList = [
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
    return GridView.builder(
        itemCount: ptoductList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.70,
        ),
        itemBuilder: (BuildContext context, int index) {
          return SingleProducts(
            single_product_name: ptoductList[index]['name'],
            single_product_image: ptoductList[index]['image'],
            single_product_price: ptoductList[index]['price'],
          );
        });
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
    properties.add(DiagnosticsProperty('single_product_name', single_product_name));
    properties.add(DiagnosticsProperty('single_product_name', single_product_name));
  }
}

class _SingleProductsState extends State<SingleProducts> {
  bool isLike = false;

  @override
  Widget build(BuildContext context) {

    final myColors = context.appColors;
    return Column(
      children: [
        Container(
          height: 160,
          width: 160,
          decoration: BoxDecoration(
              color: myColors.blue, borderRadius: BorderRadius.circular(30)),
          child: Image.network(widget.single_product_image),
        ),
        ListTile(
          title: Text(widget.single_product_name),
          subtitle: Text('₽${widget.single_product_price}'),
          trailing: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: myColors.blue,
                borderRadius: BorderRadius.circular(20),
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
      ],
    );
  }
}
