import 'package:bvt1901_practice/features/product_page/domain/state/product_details_cubit.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/presentation/theme/app_text_style.dart';
import '../../../../uikit/buttons/app_text_button.dart';
import '../../../../uikit/spinkit/spinkit.dart';
import '../../domain/state/product_details_state.dart';
import '../components/product_detals_image.dart';

class ProductDetals extends StatelessWidget {
  final int productId;

  const ProductDetals({
    Key? key,
    required this.productId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final locale = context.appLocale;

    return BlocProvider(
      create: (context) => ProductDetailsCubit()..init(productId),
      child: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
        builder: (context, state) {
          return state.loading
              ? const Center(
                  child: AppSpinKit(),
                )
              : GestureDetector(
                  // при нажатии вне виджета - закрывает его
                  behavior: HitTestBehavior.opaque,
                  onTap: () => context.appRouter.mayBePop(context),
                  child: DraggableScrollableSheet(
                    maxChildSize: 0.9,
                    initialChildSize: 0.9,
                    minChildSize: 0.8,
                    builder: (context, scrollController) => Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20.r)),
                            color: colors.white,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 14.w,
                            vertical: 14.h,
                          ),
                          child: ListView(
                            controller: scrollController,
                            children: [
                              ProductDetalsImage(
                                  image: state.productDetailsEntity!.image),
                              SizedBox(height: 20.h),
                              Text(
                                state.productDetailsEntity!.name,
                                style: AppTextStyle.normalW500S14,
                                maxLines: 2,
                                textAlign: TextAlign.center,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 16.h),
                                //оставим 1 потому что с 2 смотрится не красиво
                                height: 1.h,
                                color: colors.darkBlue,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.h),
                                child: Text(
                                  locale.description,
                                  style: AppTextStyle.normalW300S14,
                                ),
                              ),
                              Text(
                                state.productDetailsEntity!.ingredients,
                                style: AppTextStyle.normalW400S14,
                              ),
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 20.h, bottom: 10.h),
                                child: Text(
                                  locale.manufacturer,
                                  style: AppTextStyle.normalW300S14,
                                ),
                              ),
                              Text(
                                state.productDetailsEntity!.manufacturer,
                                style: AppTextStyle.normalW400S14,
                              ),
                              Text(
                                state.productDetailsEntity!.made,
                                style: AppTextStyle.normalW400S14,
                              ),
                              SizedBox(height: 70.h),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 40.h,
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            height: 90,
                            color: colors.white,
                            child: Row(
                              children: [
                                AppTextButton(
                                  width: 340.w,
                                  color: colors.lightBlue,
                                  buttonText:
                                      '${state.productDetailsEntity!.price} ₽',
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
        },
      ),
    );
  }
}
