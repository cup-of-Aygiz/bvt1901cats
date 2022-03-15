import 'package:flutter/material.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';

class DefaultAppBar extends StatelessWidget with PreferredSizeWidget {
  final bool centreTitle;
  final String myTitle;


  @override
  final Size preferredSize = const Size.fromHeight(50);

  const DefaultAppBar({Key? key,this.centreTitle = true, required this.myTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColors = context.appColors;

    return PreferredSize(
      preferredSize: const Size.fromHeight(80.0),
      child: AppBar(
        title: Text(
          myTitle,
          style: const TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: centreTitle,
        leading:
            IconButton(
          onPressed: () => {},
          icon: Icon(
            Icons.arrow_back_outlined,
            color: myColors.blue,
          ),
        ),
        backgroundColor: myColors.white,
      ),
    );
  }
}
