import 'package:bvt1901_practice/features/products_catalog/domain/state/catalog_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:like_button/like_button.dart';

import '../../../features/favoite/domain/state/favorite_products_cubit.dart';
import '../../../features/favoite/domain/state/favorite_products_state.dart';

class AppLikeButton extends StatefulWidget {
  bool isLiked;
  final int productId;

  AppLikeButton({
    Key? key,
    this.isLiked = false,
    required this.productId,
  }) : super(key: key);

  @override
  State<AppLikeButton> createState() => _AppLikeButtonState();
}

class _AppLikeButtonState extends State<AppLikeButton> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteProductsCubit, FavoriteProductState>(
        builder: (context, state) {
          return LikeButton(
            isLiked: widget.isLiked,
            size: 26.h,
            onTap: (bool isLiked) async {
              if (!isLiked) {
                setState(() { widget.isLiked = !widget.isLiked; });
                context.read<FavoriteProductsCubit>().addFavoriteProduct(widget.productId);
                context.read<CatalogCubit>().loadProducts();

              } else {
                setState(() { widget.isLiked = !widget.isLiked; });
                context.read<FavoriteProductsCubit>().deleteFavoriteProduct(widget.productId);
                context.read<CatalogCubit>().loadProducts();
              }
              return !isLiked;
            },
          );
        },
      );

  }
}
