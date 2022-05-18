import 'package:bvt1901_practice/features/product_page/domain/entity/product_details_entity.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/presentation/theme/app_text_style.dart';
import '../../../../gen/assets.gen.dart';

class OrderProductContainer extends StatelessWidget {
  final ProductDetailsEntity product;

  const OrderProductContainer({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 4.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.topLeft,
              width: 66.h,
              height: 66.h,
              child: FancyShimmerImage(
                imageUrl: product.image,
                boxFit: BoxFit.contain,
                errorWidget: Assets.images.logotip.image(),
              ),
            ),
            Text(
              product.name,
              maxLines: 3,
              style: AppTextStyle.normalW700S12,
            ),
            Row(
              children: [
                Text(
                  "${product.amount} x ",
                  style: AppTextStyle.normalW400S12,
                ),
                Text(
                  "${product.price} ₽",
                  style: AppTextStyle.normalW700S12,
                ),
              ],
            ),
          ],
        ),
      );
  }
}
