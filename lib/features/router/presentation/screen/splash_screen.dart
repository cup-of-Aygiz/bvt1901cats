import 'package:bvt1901_practice/features/login/domain/state/login_state.dart';
import 'package:bvt1901_practice/features/router/presentation/screen/router_screen.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../gen/assets.gen.dart';
import '../../../login/domain/state/login_cubit.dart';
import '../../../welcom_page/presentation/screens/welcom_page_screen.dart';

class SplashScreen extends StatelessWidget {
  final LoginCubit cubit;

  const SplashScreen({Key? key, required this.cubit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.loading == false) {
          if (state.profileEntity != null) {
            context.appRouter
                .pushAndRemoveAllBefore(context, const RouterScreen());
          } else {
            context.appRouter
                .pushAndRemoveAllBefore(context, const WelcomePageScreen());
          }
        }
      },
      child: Scaffold(
        body: Center(
          child: Assets.images.logotip.image(),
        ),
      ),
    );
  }
}
