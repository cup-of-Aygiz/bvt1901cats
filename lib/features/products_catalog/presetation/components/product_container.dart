import 'package:bvt1901_practice/app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/features/basket/domain/state/basket_cubit.dart';
import 'package:bvt1901_practice/features/favoite/domain/state/favorite_products_state.dart';
import 'package:bvt1901_practice/features/product_page/presentation/screens/product_detals.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:like_button/like_button.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../uikit/buttons/app_transparent_button.dart';
import '../../../favoite/domain/state/favorite_products_cubit.dart';
import '../../domain/entity/product_entity.dart';

class ProductContainer extends StatelessWidget {
  final ProductEntity productEntity;
  final bool? isLiked;

  const ProductContainer({
    Key? key,
    required this.productEntity,
    this.isLiked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final colors = context.appColors;
    return SizedBox(
      width: size.width / 2 - 10,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return BlocBuilder<FavoriteProductsCubit, FavoriteProductState>(
            builder: (context, state) {
              return AppTransparentButton(
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: colors.generalColor,
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
                child: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.r),
                            topRight: Radius.circular(25.r),
                          ),
                          color: colors.productColor,
                        ),
                        child: Stack(
                          children: [
                            FancyShimmerImage(
                              imageUrl: productEntity.image,
                              width: constraints.maxWidth,
                              height: constraints.maxWidth,
                              boxFit: BoxFit.contain,
                              errorWidget: Assets.images.logotip.image(),
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
                                    bottomLeft: Radius.circular(25.r),
                                    topRight: Radius.circular(25.r),
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 2.w, top: 2.w),
                                  child: LikeButton(
                                    isLiked: isLiked ??
                                        state.productList
                                            .contains(productEntity),
                                    size: 26.h,
                                    onTap: (_) async {
                                      context
                                          .read<FavoriteProductsCubit>()
                                          .updateList(productEntity.id);
                                      return state.productList
                                          .contains(productEntity);
                                    },
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
                        height: 90.h,
                        child: Stack(
                          children: [
                            Positioned(
                              top: 10.h,
                              left: 10.w,
                              right: 10.w,
                              child: Center(
                                child: Text(
                                  productEntity.name,
                                  style: AppTextStyle.normalW400S9,
                                  maxLines: 3,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 6.h,
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 30.w, vertical: 4.h),
                                height: 30.h,
                                width: 90.w,
                                decoration: BoxDecoration(
                                  color: colors.purple,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.r)),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    context
                                        .read<BasketCubit>()
                                        .addProduct(productEntity.id, 1);
                                  },
                                  child: Text(
                                    '${productEntity.price} ???',
                                    style: AppTextStyle.normalW700S11
                                        .copyWith(color: colors.black),
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
          );
        },
      ),
    );
  }
}
