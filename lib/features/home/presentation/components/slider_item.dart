import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';

import '../../../../gen/assets.gen.dart';

class SliderItem extends StatelessWidget {
  final String image;

  const SliderItem({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FancyShimmerImage(
      imageUrl: image,
      boxFit: BoxFit.fill,
      errorWidget: Assets.images.logotip.image(),
    );
  }
}
