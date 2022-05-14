import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:like_button/like_button.dart';

import '../../../features/favoite/domain/state/favorite_products_cubit.dart';
import '../../../features/favoite/domain/state/favorite_products_state.dart';

class AppLikeButton extends StatelessWidget {
  final bool isLiked;
  final int productId;

  const AppLikeButton({
    Key? key,
    this.isLiked = false,
    required this.productId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteProductsCubit(),
      child: BlocBuilder<FavoriteProductsCubit, FavoriteProductState>(
        builder: (context, state) {
          return LikeButton(
            isLiked: isLiked,
            size: 26.h,
            onTap: (bool isLiked) async {
              if (isLiked) {

              }
              else {

              }
              return !isLiked;
            },
          );
        },
      ),
    );
  }
}
