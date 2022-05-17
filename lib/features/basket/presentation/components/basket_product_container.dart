import 'package:bvt1901_practice/app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../uikit/buttons/app_transparent_button.dart';
import '../../../product_page/domain/entity/product_details_entity.dart';
import '../../../product_page/presentation/screens/product_detals.dart';

class BasketProductContainer extends StatelessWidget {
  final ProductDetailsEntity productEntity;

  const BasketProductContainer({
    Key? key,
    required this.productEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return AppTransparentButton(
        onTap: () {
          showModalBottomSheet(
            backgroundColor: colors.transparent,
            isScrollControlled: true,
            context: context,
            useRootNavigator: true,
            builder: (BuildContext context) {
              return ProductDetals(
                productId: productEntity.id,
              );
            },
          );
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 10.w),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              color: colors.white,
            ),
            height: 120.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  width: 96.h,
                  height: 96.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.r),
                  ),
                  child: FancyShimmerImage(
                    imageUrl: productEntity.image,
                    boxFit: BoxFit.contain,
                    errorWidget: Assets.images.logotip.image(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: SizedBox(
                    width: 140.h,
                    height: 130.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          productEntity.name,
                          maxLines: 3,
                          style: AppTextStyle.normalW700S14,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 30.h,
                              width: 30.w,
                              child: OutlinedButton(
                                style: ButtonStyle(
                                  padding:
                                      MaterialStateProperty.all(EdgeInsets.zero),
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
                              child: Text('${productEntity.amount}',
                                  style: AppTextStyle.normalW700S16),
                            ),
                            SizedBox(
                              height: 30.h,
                              width: 30.h,
                              child: OutlinedButton(
                                style: ButtonStyle(
                                  padding:
                                      MaterialStateProperty.all(EdgeInsets.zero),
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
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 16.w),
                  child: Text(
                    "${productEntity.price} ₽",
                    style: AppTextStyle.normalW700S16,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
