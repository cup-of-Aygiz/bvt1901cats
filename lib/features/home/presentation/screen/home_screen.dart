import 'package:bvt1901_practice/features/search/presentation/screens/search_screen.dart';
import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../products_catalog/presetation/components/products_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final locale = context.appLocale;

    return Scaffold(
      appBar: DefaultAppBar(
        titleText: locale.project_name,
      ),
      backgroundColor: colors.generalColor,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 10.h),
            child: Container(
              child: FormBuilderTextField(
                name: 'find',
                readOnly: true,
                onTap: () {
                  context.appRouter.pushScreen(context, const SearchScreen());
                },
                decoration: InputDecoration(
                  hintText: locale.search,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30.r),
                color: colors.white,
              ),
              height: 46.h,
            ),
          ),
          Padding(
              child: const ProductList(), padding: EdgeInsets.only(top: 66.h)),
        ],
      ),
    );
  }
}
