import 'package:bvt1901_practice/app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/features/products_catalog/domain/entity/product_entity.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../uikit/buttons/app_text_button.dart';

class ProductDetalsCounter extends StatefulWidget {
  const ProductDetalsCounter({
    Key? key,
    required this.productEntity,
  }) : super(key: key);

  final ProductEntity productEntity;

  @override
  State<ProductDetalsCounter> createState() => _ProductDetalsCounterState();
}

class _ProductDetalsCounterState extends State<ProductDetalsCounter> {
  var count = 1;
  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final local = context.appLocale;
    final maxCount = widget.productEntity.amount;
    if (maxCount != 0) {
      return Column(
        children: [
          AppTextButton(
            color: colors.purple,
            buttonText: local.add_cart,
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
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                  ),
                  onPressed: () {
                    setState(() {
                      if (count > 1) {
                        count--;
                      }
                    });
                  },

                  ///минус
                  child: const Icon(
                    Icons.remove,
                  ),
                ),
              ),
              Container(
                width: 50.w,
                alignment: Alignment.center,
                child: Text('$count', style: AppTextStyle.normalW400S20),
              ),
              SizedBox(
                height: 30.h,
                width: 38.w,
                child: OutlinedButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                  ),
                  onPressed: () {
                    setState(() {
                      if (count < maxCount) {
                        count++;
                      }
                    });
                  },

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
    } else {
      return Text(
        local.not_available,
        style: AppTextStyle.normalW400S24red,
      );
    }
  }
}
