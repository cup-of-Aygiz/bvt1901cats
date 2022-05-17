import 'dart:developer';

import 'package:bvt1901_practice/features/adreses_page/domain/entity/address_entity.dart';
import 'package:bvt1901_practice/features/adreses_page/domain/state/addresses_cubit.dart';
import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/uikit/buttons/app_text_button.dart';
import 'package:bvt1901_practice/uikit/spinkit/spinkit.dart';
import 'package:bvt1901_practice/uikit/text_fields/app_text_field.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/state/addresses_state.dart';

class AddressScreen extends StatelessWidget {
  final String address;

  const AddressScreen({Key? key, required this.address}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final locale = context.appLocale;
    final double width = MediaQuery.of(context).size.width;
    final double halfWidth = width / 2 - 20.w;
    final formKey = GlobalKey<FormBuilderState>();
    return BlocProvider(
      create: (context) => AddressesCubit(),
      child: BlocBuilder<AddressesCubit, AddressesState>(
        builder: (context, state) {
          return Scaffold(
                  appBar: DefaultAppBar(
                    titleText: locale.choose_address,
                  ),
                  backgroundColor: colors.generalColor,
                  body: state.loading
                      ? const Center(
                    child: AppSpinKit(),
                  )
                      :Column(
                    children: [
                      AppTextField(
                        labelText: locale.address,
                        readOnly: true,
                        name: "address",
                        initialValue: address,
                        maxLines: 3,
                        padding: EdgeInsets.symmetric(
                            vertical: 20.h, horizontal: 6.w),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppTextField(
                            labelText: locale.entrance,
                            name: "entrance",
                            width: halfWidth,
                            padding: EdgeInsets.only(bottom: 10.h, left: 6.h),
                          ),
                          AppTextField(
                            labelText: locale.intercom,
                            name: "intercom",
                            width: halfWidth,
                            padding: EdgeInsets.only(bottom: 10.h, left: 6.h),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppTextField(
                            labelText: locale.flat,
                            name: "flat",
                            width: halfWidth,
                            padding: EdgeInsets.only(bottom: 10.h, left: 6.h),
                          ),
                          AppTextField(
                            labelText: locale.floor,
                            name: "floor",
                            width: halfWidth,
                            padding: EdgeInsets.only(bottom: 10.h, left: 6.h),
                          ),
                        ],
                      ),
                      AppTextField(
                        labelText: locale.comment,
                        name: "comment",
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 6.w),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 10.h, horizontal: 6.w),
                        child: SizedBox(
                          width: width,
                          child: AppTextButton(
                            buttonText: locale.save_changes,
                            onPressed: () {
                              String? comment=formKey.currentState?.value['comment'];
                              String? floor=formKey.currentState?.value['floor'];
                              String? entrance=formKey.currentState?.value['entrance'];
                              String? intercom=formKey.currentState?.value['intercom'];
                              String? flat=formKey.currentState?.value['flat'];
                              var newAddress=AddressEntity(
                                  address: address,
                                  flat: flat==null ? 0 : int.parse(flat),
                                  floor: floor==null ? 0 : int.parse(floor),
                                  entrance: entrance==null ? 0 : int.parse(entrance),
                                  intercom: intercom==null ? 0 : int.parse(intercom),
                                  comment: comment ?? '',
                              );
                              log(newAddress.address);
                              context.read<AddressesCubit>().addAddresses(newAddress);
                              context.appRouter.popToRoot(context);
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                );
        },
      ),
    );
  }
}
