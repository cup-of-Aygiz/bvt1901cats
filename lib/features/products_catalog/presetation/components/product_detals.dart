import 'package:bvt1901_practice/features/products_catalog/domain/entity/product_entity.dart';
import 'package:bvt1901_practice/features/products_catalog/presetation/components/product_detals_counter.dart';
import 'package:bvt1901_practice/features/products_catalog/presetation/components/product_detals_image.dart';
import 'package:bvt1901_practice/features/products_catalog/presetation/components/product_is_favorite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/presentation/theme/app_text_style.dart';
import '../../../../uikit/colors/app_colors.dart';

class ProductDetals extends StatefulWidget {
  const ProductDetals({
    Key? key,
    required this.colors,
    required this.productEntity,
    
  }) : super(key: key);

  final AppColors colors;
  final ProductEntity productEntity;

  @override
  State<ProductDetals> createState() => _ProductDetalsState();
}

class _ProductDetalsState extends State<ProductDetals> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // при нажатии вне виджета - закрывает его
      behavior: HitTestBehavior.opaque,
      onTap: () => Navigator.of(context).pop(),
      child: GestureDetector(
        onTap: () {},
        child: DraggableScrollableSheet(
          maxChildSize: 0.9,
          initialChildSize: 0.9,
          minChildSize: 0.4,
          builder: (context, scrollController) => Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
                color: widget.colors.white),
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 14.h),
            child: ListView(
              controller: scrollController,
              children: [
                ProductDetalsImage(widget: widget),

                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.productEntity.name,
                      style: AppTextStyle.normalW700S18,
                    ),
                    ProductIsFavorite(
                      widget: widget,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 16.h, bottom: 8.h),
                  height: 1,
                  color: widget.colors.purple,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Цена:',
                          style: AppTextStyle.normalW200S14,
                        ),
                        Text('${widget.productEntity.price} ₽',
                            style: AppTextStyle.normalW700S30),
                      ],
                    ),
                    ProductDetalsCounter(widget: widget)
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 16.h, bottom: 8.h),
                  height: 1,
                  color: widget.colors.purple,
                ),
                Text('Описание:', style: AppTextStyle.normalW200S14),

                /// добавить в locale
                const Text('Тут будет описание товара и его состав'),
                SizedBox(
                  height: 20.h,
                ),
                Text('Производитель:', style: AppTextStyle.normalW200S14),
                const Text('Тут будет производитель и откуда товар'),
                Container(
                  margin: EdgeInsets.only(top: 16.h, bottom: 8.h),
                  height: 1,
                  color: widget.colors.purple,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

