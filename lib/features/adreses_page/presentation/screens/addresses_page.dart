import 'package:bvt1901_practice/features/map_page/presentation/screens/map_screen.dart';
import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/uikit/buttons/app_text_button.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';

import '../components/addresses_list.dart';

class AddressesScreen extends StatelessWidget {
  const AddressesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final locale = context.appLocale;

    return Scaffold(
      backgroundColor: colors.generalColor,
      appBar: DefaultAppBar(
        titleText: locale.my_addresses,
      ),
      body: Stack(
        children: [
          const AddressesList(),
          Positioned(
            bottom: 0,
            left: 0,
            child: AppTextButton(
              buttonText: locale.add_address,
              onPressed: () {
                context.appRouter.pushScreen(context, const MapScreen());
              },
            ),
          )
        ],
      ),
    );
  }
}
