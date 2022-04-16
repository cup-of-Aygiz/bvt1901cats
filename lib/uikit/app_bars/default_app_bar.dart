import 'package:flutter/material.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';

import '../../app/presentation/theme/app_text_style.dart';
import '../buttons/app_go_back.dart';

class DefaultAppBar extends StatelessWidget with PreferredSizeWidget {
  final bool centreTitle;
  final String? titleText;
  final Widget? title;
  final Color? backgroundColor;

  @override
  final Size preferredSize = const Size.fromHeight(50);

  const DefaultAppBar({
    Key? key,
    this.centreTitle = true,
    this.titleText,
    this.backgroundColor,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myColors = context.appColors;

    final ModalRoute<dynamic>? parentRoute = ModalRoute.of(context);
    final bool canPop = parentRoute?.canPop ?? false;

    return PreferredSize(
      preferredSize: const Size.fromHeight(80.0),
      child: AppBar(
        title: titleText != null
            ? Text(
                titleText ?? '',
                style: AppTextStyle.normalW700S18
                    .copyWith(color: myColors.black),
              )
            : title,
        centerTitle: centreTitle,
        leading: canPop ? const AppGoBackButton() : null,
        backgroundColor: backgroundColor ?? myColors.purple,
      ),
    );
  }
}
