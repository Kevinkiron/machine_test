import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:swift_service/routes/routes_constants.dart';
import 'package:swift_service/src/authentication_view/widgets/custom_otp_view.dart';
import 'package:swift_service/utils/app_images.dart';

import '../../bloc/authentication_bloc/authentication_bloc.dart';

class LoginOtpView extends StatelessWidget {
  LoginOtpView({super.key, required this.number});
  final TextEditingController otp = TextEditingController();
  final String number;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        return CustomOtpView(
          handleControllers: (controllers) {
            if (state.otpLocal.isNotEmpty) {
              final otpChars = state.otpLocal.split('');
              for (int i = 0; i < controllers.length; i++) {
                if (i < otpChars.length && controllers[i] != null) {
                  controllers[i]!.text = otpChars[i];
                }
              }
            }
          },
          number: number,
          image: AppImages.loginLogo,
          color: const Color(0xFF207ec2),
          textButton: 'Verify & Login',
          reditNumber: () {
            context.go(RoutesConstants.homePath);
          },
          onSubmit: (value) {},
          onTap: () {
            context.go(RoutesConstants.homePath);
          },
        );
      },
    );
  }
}
