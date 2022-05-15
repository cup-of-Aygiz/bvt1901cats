import 'package:bvt1901_practice/app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/features/products_catalog/domain/entity/product_entity.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../uikit/buttons/app_transparent_button.dart';
import '../../../product_page/presentation/screens/product_screen.dart';

class BasketProductContainer extends StatelessWidget {
  final ProductEntity productEntity;

  const BasketProductContainer({
    Key? key,
    required this.productEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return AppTransparentButton(
        onTap: () {
          context.appRouter.pushScreen(context, const ProductScreen());
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 10.w),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              color: colors.white,
            ),
            height: 98.h,
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
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productEntity.name,
                        maxLines: 3,
                        style: AppTextStyle.normalW700S16,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 30.h,
                            width: 30.w,
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
                              '${productEntity.amount}',
                              style: AppTextStyle.normalW700S16
                            ),
                          ),
                          SizedBox(
                            height: 30.h,
                            width: 30.h,
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
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Text(
                    "${productEntity.price} ₽",
                    style: AppTextStyle.normalW400S16,

                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
