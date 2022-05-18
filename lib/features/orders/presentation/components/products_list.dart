import 'package:bvt1901_practice/features/orders/presentation/components/order_product_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../product_page/domain/entity/product_details_entity.dart';

class ProductsList extends StatelessWidget {
  final List<ProductDetailsEntity> products;

  const ProductsList({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //задаем размер чтобы не было конфликта ListView и PageView
    double height = MediaQuery.of(context).size.height - 350.h;
    return SizedBox(
      height: height,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: ListView(
          children: [
            for (int i = 0; i < products.length; i++)
              OrderProductContainer(product: products[i]),
          ],
        ),
      ),
    );
  }
}
