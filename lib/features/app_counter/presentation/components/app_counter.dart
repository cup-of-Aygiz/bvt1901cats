import 'package:bvt1901_practice/app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCounter extends StatefulWidget {
  const AppCounter({Key? key}) : super(key: key);

  @override
  State<AppCounter> createState() => _AppCounterState();
}

class _AppCounterState extends State<AppCounter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.h,
      width: 130.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        color: context.appColors.lightPurple,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.remove)),
          Text(
            '1',
            style: AppTextStyle.normalW700S16,
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
        ],
      ),
    );
  }
}
