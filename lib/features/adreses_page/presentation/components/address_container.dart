import 'package:bvt1901_practice/app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/features/adreses_page/domain/entity/address_entity.dart';
import 'package:bvt1901_practice/uikit/buttons/app_transparent_button.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../domain/state/addresses_cubit.dart';
import '../../domain/state/addresses_state.dart';
import '../screens/address_page.dart';

class AddressContainer extends StatelessWidget {
  final AddressEntity addressEntity;
  final bool isFavorite;

  const AddressContainer({
    Key? key,
    required this.addressEntity,
    required this.isFavorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final locale = context.appLocale;
    return BlocBuilder<AddressesCubit, AddressesState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 10.h),
          child: Slidable(
            endActionPane: ActionPane(
              motion: const BehindMotion(),
              children: [
                SlidableAction(
                  onPressed: (c) {
                    context.read<AddressesCubit>().deleteAddress(addressEntity);
                  },
                  backgroundColor: colors.red,
                  foregroundColor: colors.black,
                  icon: Icons.delete,
                ),
                SlidableAction(
                  onPressed: (c) {
                    context
                        .read<AddressesCubit>()
                        .favoriteAddress(addressEntity);
                  },
                  backgroundColor: colors.green,
                  foregroundColor: colors.black,
                  icon: Icons.star,
                ),
              ],
            ),
            child: AppTransparentButton(
              onTap: () {
                context.appRouter.pushScreen(
                    context,
                    AddressScreen(
                      address: addressEntity.address,
                      addressEntity: addressEntity,
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: colors.white,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                // height: 70.h,
                child: Row(
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      height: 30.h,
                      width: 30.h,
                      margin: EdgeInsets.symmetric(vertical: 20.h),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: colors.white),
                      child: Icon(
                        Icons.location_on_outlined,
                        color: isFavorite ? colors.red : colors.black,
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.h),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 6.h),
                              child: Text(
                                "${addressEntity.address}"
                                "\n${locale.entrance}: ${addressEntity.entrance} "
                                "\n${locale.intercom}: ${addressEntity.intercom} "
                                "\n${locale.flat}: ${addressEntity.flat} "
                                "\n${locale.floor}: ${addressEntity.floor}.",
                                style: AppTextStyle.normalW700S12
                                    .copyWith(height: 1.3),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
