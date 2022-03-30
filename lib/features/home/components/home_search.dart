import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class HomeSearch extends StatelessWidget {
  const HomeSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColors = context.appColors;
    return Row(
      children: [
        Expanded(
            child: Container(
                margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
                decoration: BoxDecoration(
                    color: myColors.white,
                    borderRadius: BorderRadius.circular(25.r),
                    boxShadow: [
                      BoxShadow(
                        color: myColors.shadow,
                        blurRadius: 4,
                      )
                    ]),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Поиск',
                    //убираем подчеркивания
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    prefixIcon: Icon(Icons.search), 
                  ),
                ))),
      ],
    );
  }
}
