import 'package:bvt1901_practice/app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/features/basket/domain/state/basket_cubit.dart';
import 'package:bvt1901_practice/features/basket/domain/state/basket_state.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCounter extends StatefulWidget {
  final int id;

  const AppCounter({
    Key? key, required this.id,
  }) : super(key: key);

  @override
  State<AppCounter> createState() => _AppCounterState();
}

class _AppCounterState extends State<AppCounter> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BasketCubit, BasketState>(
      builder: (context, state) {
        return Container(
          height: 36.h,
          width: 130.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            color: context.appColors.lightPurple,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    context.read<BasketCubit>().deleteProduct(widget.id);
                  },
                  icon: const Icon(Icons.remove)),
              Text(
                '${state.productList[widget.id].cartAmount}',
                style: AppTextStyle.normalW700S16,
              ),
              IconButton(
                  onPressed: () {
                    context.read<BasketCubit>().addProduct(widget.id, 1);
                  },
                  icon: const Icon(Icons.add)),
            ],
          ),
        );
      },
    );
  }
}
