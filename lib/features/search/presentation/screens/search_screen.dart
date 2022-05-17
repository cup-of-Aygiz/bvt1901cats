import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../products_catalog/presetation/components/product_container.dart';
import '../../domain/state/searcher_bloc.dart';
import '../../domain/state/searcher_event.dart';
import '../../domain/state/searcher_state.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final locale = context.appLocale;
    return BlocProvider(
      create: (context) => SearcherBloc(),
      child: BlocBuilder<SearcherBloc, SearchState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: colors.generalColor,
            appBar: const DefaultAppBar(),
            body: ListView(
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30.r),
                        color: colors.white,
                      ),
                      width: 290.w,
                      height: 46.h,
                      margin: EdgeInsets.only(top: 20.h, left: 14.w),
                      child: FormBuilderTextField(
                        name: 'find',
                        autofocus: true,
                        decoration: InputDecoration(
                          hintText: locale.search,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                          ),
                        ),
                        onChanged: (searchText) {
                          context.read<SearcherBloc>().add(
                              SearcherSearched(searchText: searchText ?? ''));
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.w, top: 20.h),
                      width: 46.h,
                      height: 46.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: colors.white,
                        border: Border.all(
                          width: 1,
                          color: colors.grey,
                          style: BorderStyle.solid,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: Wrap(
                    children: [
                      for (var item in state.productList)
                        ProductContainer(
                          productEntity: item,
                        ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
