import 'package:bvt1901_practice/features/adreses_page/domain/entity/address_entity.dart';
import 'package:bvt1901_practice/features/adreses_page/domain/state/addresses_cubit.dart';
import 'package:bvt1901_practice/features/adreses_page/presentation/screens/addresses_page.dart';
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

class AddressScreen extends StatefulWidget {
  final String address;
  final AddressEntity? addressEntity;

  const AddressScreen({
    Key? key,
    required this.address,
    this.addressEntity,
  }) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final locale = context.appLocale;
    final double width = MediaQuery.of(context).size.width;
    final double halfWidth = width / 2 - 20.w;
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
                : FormBuilder(
                    key: formKey,
                    child: ListView(
                      padding: EdgeInsets.symmetric(horizontal: 6.w),
                      children: [
                        AppTextField(
                          labelText: locale.address,
                          name: "address",
                          initialValue: widget.address,
                          maxLines: 3,
                          padding: EdgeInsets.symmetric(vertical: 20.h),
                          validator: FormBuilderValidators.required(context,
                              errorText: locale.this_required_field),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppTextField(
                              labelText: locale.entrance,
                              name: "entrance",
                              initialValue:
                                  widget.addressEntity?.entrance.toString(),
                              width: halfWidth,
                              textInputType: TextInputType.number,
                              padding: EdgeInsets.only(bottom: 10.h),
                              validator: FormBuilderValidators.required(context,
                                  errorText: locale.this_required_field),
                            ),
                            AppTextField(
                              labelText: locale.intercom,
                              name: "intercom",
                              initialValue:
                                  widget.addressEntity?.intercom.toString(),
                              width: halfWidth,
                              textInputType: TextInputType.number,
                              padding: EdgeInsets.only(bottom: 10.h),
                              validator: FormBuilderValidators.required(context,
                                  errorText: locale.this_required_field),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppTextField(
                              labelText: locale.flat,
                              name: "flat",
                              initialValue:
                                  widget.addressEntity?.flat.toString(),
                              width: halfWidth,
                              textInputType: TextInputType.number,
                              padding: EdgeInsets.only(bottom: 10.h),
                              validator: FormBuilderValidators.required(context,
                                  errorText: locale.this_required_field),
                            ),
                            AppTextField(
                              labelText: locale.floor,
                              name: "floor",
                              initialValue:
                                  widget.addressEntity?.floor.toString(),
                              width: halfWidth,
                              textInputType: TextInputType.number,
                              padding: EdgeInsets.only(bottom: 10.h),
                              validator: FormBuilderValidators.required(context,
                                  errorText: locale.this_required_field),
                            ),
                          ],
                        ),
                        AppTextField(
                          labelText: locale.comment,
                          name: "comment",
                          initialValue:
                              widget.addressEntity?.comment.toString(),
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: SizedBox(
                            width: width,
                            child: AppTextButton(
                              buttonText: locale.save_changes,
                              onPressed: () {
                                formKey.currentState?.validate();
                                if (formKey.currentState?.validate() ?? false) {
                                  formKey.currentState?.save();
                                  String? comment =
                                      formKey.currentState?.value['comment'];
                                  String floor =
                                      formKey.currentState?.value['floor'];
                                  String entrance =
                                      formKey.currentState?.value['entrance'];
                                  String intercom =
                                      formKey.currentState?.value['intercom'];
                                  String flat =
                                      formKey.currentState?.value['flat'];
                                  var newAddress = AddressEntity(
                                    address: widget.address,
                                    flat: int.tryParse(flat) ?? 0,
                                    floor: int.tryParse(floor) ?? 0,
                                    entrance: int.tryParse(entrance) ?? 0,
                                    intercom: int.tryParse(intercom) ?? 0,
                                    comment: comment ?? '',
                                  );
                                  context.read<AddressesCubit>().addAddresses(
                                      addressEntity: newAddress,
                                      oldAddress: widget.addressEntity);
                                  context.appRouter.pushAndPopToRoot(
                                      context, const AddressesScreen());
                                }
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }
}
