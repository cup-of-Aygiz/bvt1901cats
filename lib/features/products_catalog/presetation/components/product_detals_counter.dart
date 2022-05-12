import 'package:bvt1901_practice/features/products_catalog/presetation/components/product_detals.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../uikit/buttons/app_text_button.dart';

class ProductDetalsCounter extends StatelessWidget {
  const ProductDetalsCounter({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final ProductDetals widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextButton(
          color: widget.colors.purple,
          buttonText: 'Добавить в Корзину',

          /// добавить в locale
          onPressed: () {},
        ),
        SizedBox(
          height: 8.h,
        ),
        Row(
          children: [
            SizedBox(
              height: 30.h,
              width: 38.w,
              child: OutlinedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.zero),
                ),
                onPressed: () {},

                ///минус
                child: const Icon(
                  Icons.remove,
                ),
              ),
            ),
            Container(
              width: 50.w,
              alignment: Alignment.center,
              child: Text(
                '${widget.productEntity.amount}',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
              width: 38.w,
              child: OutlinedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.zero),
                ),
                onPressed: () {},

                ///плюс
                child: const Icon(
                  Icons.add,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
