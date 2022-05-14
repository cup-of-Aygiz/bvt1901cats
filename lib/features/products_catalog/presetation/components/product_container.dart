import 'package:bvt1901_practice/app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/features/products_catalog/presetation/components/product_detals.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:like_button/like_button.dart';
import '../../../../uikit/buttons/app_transparent_button.dart';
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
    final colors = context.appColors;
    return SizedBox(
      width: size.width / 2 - 10,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return AppTransparentButton(
            onTap: () {
              showModalBottomSheet(
                backgroundColor: colors.transparent,
                isScrollControlled: true,
                context: context,
                useRootNavigator: true,
                builder: (BuildContext context) {
                  return ProductDetals(
                      productEntity: productEntity,
                      );
                },
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.r),
                        topRight: Radius.circular(25.r)),
                    child: Stack(
                      children: [
                        FancyShimmerImage(
                          imageUrl: productEntity.image,
                          width: constraints.maxWidth,
                          height: constraints.maxWidth,
                          boxFit: BoxFit.fill,
                        ),
                        Positioned(
                          top: 0.h,
                          right: 0.h,
                          child: Container(
                            width: 36.h,
                            height: 36.h,
                            decoration: BoxDecoration(
                              color: colors.white,
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(25.r)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 2.w, top: 2.w),
                              child: LikeButton(
                                size: 26.h,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25.r),
                          bottomRight: Radius.circular(25.r)),
                      color: colors.white,
                    ),
                    width: size.width / 2,
                    height: 70.h,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 4.h),
                          child: Text(
                            productEntity.name,
                            style: constraints.maxWidth > 196
                                ? AppTextStyle.normalW700S11
                                : AppTextStyle.normalW700S9,
                            maxLines: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 4.h),
                          child: Container(
                            height: 30.h,
                            decoration: BoxDecoration(
                              color: colors.purple,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: SafeArea(
                                child: Text(
                                  '${productEntity.price} ₽',
                                  style: AppTextStyle.normalW700S11
                                      .copyWith(color: colors.black),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
