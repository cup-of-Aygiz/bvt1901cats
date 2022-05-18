import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../gen/assets.gen.dart';

class SliderItem extends StatelessWidget {
  final String text;

  const SliderItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return Container(
      width: MediaQuery.of(context).size.width,
      //margin: EdgeInsets.symmetric(horizontal: 6.w),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: colors.productColor,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: colors.darkOcean,
          style: BorderStyle.solid,
        ),
      ),
      child: FancyShimmerImage(
        imageUrl: text,
        boxFit: BoxFit.fill,
        errorWidget: Assets.images.logotip.image(),
      ),
    );
  }
}
