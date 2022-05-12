import 'package:bvt1901_practice/features/products_catalog/presetation/components/product_detals.dart';
import 'package:flutter/material.dart';

class ProductIsFavorite extends StatefulWidget {
  const ProductIsFavorite({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final ProductDetals widget;

  @override
  State<ProductIsFavorite> createState() => _ProductIsFavoriteState();
}

class _ProductIsFavoriteState extends State<ProductIsFavorite> {
  @override
  Widget build(BuildContext context) {
    bool isFavorite = false;
    return IconButton(
      icon: (isFavorite
          // ignore: dead_code
          ? const Icon(Icons.favorite)
          : const Icon(Icons.favorite_border)),
      onPressed: () {
        setState(
          () {
            isFavorite = !isFavorite; /////!!!не работает
          },
        );
      },
      color: widget.widget.colors.red,
    );
  }
}
