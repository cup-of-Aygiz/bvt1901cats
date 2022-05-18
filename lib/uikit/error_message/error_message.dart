import 'package:another_flushbar/flushbar.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/presentation/theme/app_text_style.dart';

/// Необходимы, для того, что бы  показывать снекбар ниже, если уже он показан.
var _countMessage = 0;
var _isShowed = false;

class AppTopMessage {
  final String title;
  final Widget icon;
  final Color colorBackground;
  final BuildContext context;
  final Color titleColor;
  final Function()? onTap;
  final Widget? button;

  AppTopMessage(
      this.title,
      this.icon,
      this.colorBackground,
      this.context,
      this.titleColor,
      this.onTap,
      this.button,
      );


  AppTopMessage.error({
    required this.context,
    required this.title,
    this.onTap,
    this.button,
  })  : icon = Icon(
    Icons.cancel_outlined,
    size: 28.0,
    color: context.appColors.black,
  ),
        titleColor = context.appColors.black,
        colorBackground = context.appColors.red {
    _show();
  }

  _show() {
    // Если два сообщения показаны, другие не показывать
    if (_isShowed || _countMessage == 2) {
      _isShowed = false;
      _countMessage = 0;
    }
    if (_countMessage == 0) {
      _countMessage++;
    } else if (_countMessage == 1) {
      _countMessage++;
      _isShowed = true;
    } else {
      return;
    }

    Flushbar(
      icon: icon,
      onTap: (value) {
        if (onTap != null) {
          onTap!();
        } else {
          value.dismiss();
        }
      },
      duration: const Duration(seconds: 3),
      flushbarPosition: FlushbarPosition.TOP,
      mainButton: button,
      backgroundColor: colorBackground,
      margin: EdgeInsets.only(
          left: 16.w,
          right: 16.w,
          top: _countMessage == 2 ? 90.h : 16.h),
      messageText: Text(title,maxLines: 3,overflow: TextOverflow.ellipsis,style: AppTextStyle.normalW400S16.copyWith(color: titleColor) ),
      onStatusChanged: (status) {
        if (status == FlushbarStatus.IS_HIDING) {
          if (_countMessage == 1) {
            _countMessage = 0;
          }
          if (_countMessage == 2) {
            _countMessage = 0;
            _isShowed = false;
          }
        }
      },
      borderRadius: BorderRadius.circular(4),
    ).show(context);
  }
}


