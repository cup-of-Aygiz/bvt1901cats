import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'domain/state/like_button_cubit.dart';

class AppLikeButton extends StatelessWidget {
  final bool isLiked;

  const AppLikeButton({
    Key? key,
    this.isLiked = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LikeButtonCubit(),
      //child: BlocBuilder<LikeButtonCubit, LikeButtonState>(
        //builder: (context, state) {
         // return LikeButton(
           // isLiked: isLiked,
            //size: 26.h,
         // );
        //},
     // ),
    );
  }
}
