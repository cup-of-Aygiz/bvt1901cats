import 'package:bvt1901_practice/features/products_catalog/domain/entity/product_entity.dart';
import 'package:bvt1901_practice/features/product_page/presentation/components/product_detals_image.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:like_button/like_button.dart';

import '../../../../app/presentation/theme/app_text_style.dart';
import '../../../../uikit/buttons/app_text_button.dart';

class ProductDetals extends StatelessWidget {
  final ProductEntity productEntity;

  const ProductDetals({
    Key? key,
    required this.productEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final locale = context.appLocale;

    return GestureDetector(
      // при нажатии вне виджета - закрывает его
      behavior: HitTestBehavior.opaque,
      onTap: () => context.appRouter.mayBePop(context),
      child: GestureDetector(
        onTap: () {},
        child: DraggableScrollableSheet(
          maxChildSize: 0.9,
          initialChildSize: 0.9,
          minChildSize: 0.4,
          builder: (context, scrollController) => Stack(children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
                color: colors.white,
              ),
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
              child: ListView(
                controller: scrollController,
                children: [
                  ProductDetalsImage(productEntity: productEntity),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productEntity.name,
                        style: AppTextStyle.normalW700S18,
                      ),
                      LikeButton(size: 26.h),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16.h, bottom: 8.h),
                    height: 1.h,
                    color: colors.darkBlue,
                  ),
                  Text(
                    locale.description,
                    style: AppTextStyle.normalW200S14,
                  ),
                  Text(
                    'Тут будет описание товара и его состав',
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    locale.manufacturer,
                    style: AppTextStyle.normalW200S14,
                  ),
                  Text(
                    'Тут будет производитель и откуда товар',
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16.h, bottom: 8.h),
//оставим 1 потому что с 2 смотрится не красиво
                    height: 1.h,
                    color: colors.darkBlue,
                  ),
                  SizedBox(height: 50.h),
                ],
              ),
            ),
            Positioned(
              bottom: 30.h,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                height: 90,
                color: colors.white,
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                   // ProductDetalsCounter(productEntity: productEntity),
                    AppTextButton(
                      width: 340.w,
                      color: colors.lightBlue,
                      buttonText: '${productEntity.price} ₽',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],),
        ),
      ),
    );
  }
}
