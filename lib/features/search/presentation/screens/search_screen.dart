import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final locale = context.appLocale;
    return Scaffold(
      appBar: DefaultAppBar(),
      body: ListView(
        children: [
          Row(
            children: [
              Container(
                child: FormBuilderTextField(
                  name: 'find',
                  autofocus: true,
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
                width: 290.w,
                height: 46.h,
                margin: EdgeInsets.only(top: 20.h,left: 14.w),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.w,top: 20.h),
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
        ],
      ),
    );
  }
}
