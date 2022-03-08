import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../app/router/app_router.dart';
import '../../uikit/colors/app_colors.dart';


extension AppContext on BuildContext {
  AppLocalizations get appLocale => AppLocalizations.of(this);

  AppColors get appColors => AppColors.of(this);

  AppRouter get appRouter => AppRouter.instance;
}
