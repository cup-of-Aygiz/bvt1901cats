import 'package:bvt1901_practice/app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:like_button/like_button.dart';
import '../../domain/entity/product_entity.dart';

class ProductContainer extends StatelessWidget {
  final ProductEntity productEntity;

  const ProductContainer({
    Key? key,
    required this.productEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final myColors = context.appColors;
    return SizedBox(
      width: size.width / 2,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25.r),
                  child: Stack(
                    children: [
                      FancyShimmerImage(
                        imageUrl: productEntity.image,
                        width: constraints.maxWidth,
                        height: constraints.maxWidth,
                        boxFit: BoxFit.fill,
                        boxDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 116.w, top: 6.h),
                        width: 32.h,
                        height: 32.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: myColors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 2.w,top: 2.w),
                          child: const LikeButton(),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Row(
                    children: [
                      Text(
                        productEntity.name,
                        style: AppTextStyle.normalW700S12,
                        textAlign: TextAlign.left,
                        maxLines: 2,
                      ),
                      SizedBox(width: 10.h),
                    ],
                  ),
                ),
                SizedBox(height: 4.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Text(
                    '${productEntity.price} ₽',
                    style: AppTextStyle.normalW700S12
                        .copyWith(color: myColors.black),
                  ),
                ),
                SizedBox(height: 16.h),
                Container(
                  height: 1,
                  color: myColors.black,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
