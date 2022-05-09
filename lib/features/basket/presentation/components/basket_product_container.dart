import 'package:bvt1901_practice/app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/features/products_catalog/domain/entity/product_entity.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../uikit/buttons/app_transparent_button.dart';
import '../../../product_page/presentation/screens/product_screen.dart';
import 'package:counter/counter.dart';

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
          padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 10.w),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              color: colors.white,
            ),
            height: 100.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  width: 96.h,
                  height: 96.h,
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
                      Counter(
                        min: 0,
                        max: 10,
                        bound: 1,
                        step: 1,
                        onValueChanged: (num){
                          if(num>1){
                            //productEntity.amount=num;
                          }
                          else{
                            //окно подтверждения удаления
                          }
                        },
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
