import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';

class ProductDetalsImage extends StatelessWidget {
  final String image;
  
  const ProductDetalsImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: FancyShimmerImage(
        imageUrl: image,
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
                imageUrl: image,
                boxFit: BoxFit.contain,
              ),
            ),
          );
        },
      ),
    );
  }
}
