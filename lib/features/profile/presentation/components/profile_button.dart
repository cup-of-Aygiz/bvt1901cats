import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/presentation/theme/app_text_style.dart';
import '../../../../uikit/buttons/app_transparent_button.dart';

class ProfileButton extends StatelessWidget {
  final Widget icon;
  final String text;
  final VoidCallback onTap;

  const ProfileButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60.h,
      child: AppTransparentButton(
        onTap: onTap,
        child: Row(
          children: [
            SizedBox(width: 20.w),
            icon,
            SizedBox(width: 20.w),
            Text(
              text,
              style: AppTextStyle.normalW400S16,
            )
          ],
        ),
      ),
    );
  }
}
