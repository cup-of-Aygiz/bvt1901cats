import 'package:bvt1901_practice/features/products_catalog/domain/entity/product_entity.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';

class ProductDetalsImage extends StatelessWidget {
  final ProductEntity productEntity;
  
  const ProductDetalsImage({
    Key? key,
    required this.productEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: FancyShimmerImage(
        imageUrl: productEntity.image,
        height: 300.h,
        boxFit: BoxFit.fitHeight,
        errorWidget: Assets.images.logotip.image(),
      ),
      onTap: () => showGeneralDialog(
        context: context,
        barrierDismissible: true, // закрыт при нажатии вне
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext context, Animation<double> animation,
            Animation<double> secondaryAnimation) {
          return GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: InteractiveViewer(
              child: FancyShimmerImage(
                imageUrl: productEntity.image,
                boxFit: BoxFit.contain,
              ),
            ),
          );
        },
      ),
    );
  }
}
