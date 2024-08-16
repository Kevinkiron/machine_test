import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:swift_service/routes/routes_constants.dart';
import 'package:swift_service/utils/app_images.dart';
import 'package:swift_service/utils/styles/text_styles.dart';
import 'package:swift_service/utils/theme/app_colors.dart';

import '../../bloc/splash_bloc/splash_bloc.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state.status == Status.login) {
            context.go(RoutesConstants.loginPath);
          }
          if (state.status == Status.onboard) {
            context.go(RoutesConstants.onboardingPath);
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                AppImages.logo,
                width: 92,
                height: 95,
              ),
            ),
            KStyles().logo(text: 'Swift Service', size: 34)
          ],
        ),
      ),
    );
  }
}
