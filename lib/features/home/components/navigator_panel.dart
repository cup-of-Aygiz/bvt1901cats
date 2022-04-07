import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class NavigatorPanel extends StatelessWidget {
  const NavigatorPanel({ Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColors = context.appColors;
    return Container(
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(35.r),
        //   topRight: Radius.circular(15.r)
        // ),
        boxShadow: [ 
          BoxShadow(
          
            offset: const Offset(0,-25),
            blurRadius: 20.r,
            color: myColors.blue)
        ]
        ),
      child: CurvedNavigationBar(
        backgroundColor: myColors.blue,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const Icon(Icons.home),
          const Icon(Icons.favorite),
          const Icon(Icons.shopping_basket_sharp),
          const Icon(Icons.account_circle),
        ],
        onTap: (index){},
      ),
    );
  }
}