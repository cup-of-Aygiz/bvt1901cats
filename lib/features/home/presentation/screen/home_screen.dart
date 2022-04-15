import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../products_catalog/presetation/components/products_list.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      /// TODO поменять
      appBar: DefaultAppBar(
        titleText: '',
      ),
      body: ProductList(),
    );
  }
}
