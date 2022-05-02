import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';

import '../../../products_catalog/presetation/components/products_list.dart';
import '../../../registration/presentation/components/proggres_gradient.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return Scaffold(
      /// TODO поменять
      appBar: const DefaultAppBar(
        titleText: '',
      ),
      body: BackgroundProgressWidget(
          colorOne: colors.darkOcean,
          length: 4,
          child: SafeArea(
            top: false,
            child: Stack(
              children: [
                const ProductList(),
                BackgroundProgressWidget(
                  length: 20,
                  colorThree: colors.ocean,
                  colorOne: colors.lightOcean,
                  colorTwo: colors.darkOcean,
                  child: const SizedBox.shrink(),
                )
              ],
            ),
          )),
    );
  }
}
