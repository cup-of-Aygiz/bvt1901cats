import 'package:bvt1901_practice/features/adreses_page/domain/state/addresses_cubit.dart';
import 'package:bvt1901_practice/features/map_page/presentation/screens/map_screen.dart';
import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/uikit/buttons/app_text_button.dart';
import 'package:bvt1901_practice/uikit/spinkit/spinkit.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/state/addresses_state.dart';
import '../components/address_container.dart';

class AddressesScreen extends StatelessWidget {
  const AddressesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final locale = context.appLocale;

    return BlocProvider(
      create: (context) => AddressesCubit()..init(),
      child: BlocBuilder<AddressesCubit, AddressesState>(
        builder: (context, state) {
          return state.loading
              ? const Center(
                  child: AppSpinKit(),
                )
              : Scaffold(
                  backgroundColor: colors.generalColor,
                  appBar: DefaultAppBar(
                    titleText: locale.my_addresses,
                  ),
                  body: Stack(
                    children: [
                      ListView(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          Center(
                            child: Wrap(
                              children: [
                                for (int i = 0; i < state.addressesList.length; i++)
                                  AddressContainer( addressEntity: state.addressesList[i],)
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 50,
                        width: 390,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 10.h),
                          child: AppTextButton(
                            buttonText: locale.add_address,
                            onPressed: () {
                              context.appRouter.pushScreen(
                                context,
                                const MapScreen(),
                                rootNavigator: true,
                              );
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
