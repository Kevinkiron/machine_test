import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:swift_service/routes/routes_constants.dart';
import 'package:swift_service/src/authentication_view/signin_form.dart';
import 'package:swift_service/src/authentication_view/signup_view.dart';
import 'package:swift_service/src/authentication_view/widgets/custom_otp_view.dart';
import 'package:swift_service/src/profile_view/profile_view.dart';
import 'package:swift_service/utils/app_images.dart';

class SignupOtpView extends StatelessWidget {
  const SignupOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomOtpView(
      number: '',
      image: AppImages.signUpLogo,
      color: const Color(0xFF14b4ca),
      textButton: 'Verify & Setup',
      reditNumber: () {
        context.goNamed(RoutesConstants.signUpPath);
      },
      onTap: () {},
    );
  }
}
