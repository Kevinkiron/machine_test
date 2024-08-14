import 'package:flutter/material.dart';
import 'package:swift_service/src/authentication_view/signin_form.dart';
import 'package:swift_service/src/authentication_view/signup_view.dart';
import 'package:swift_service/src/authentication_view/widgets/custom_otp_view.dart';
import 'package:swift_service/utils/app_images.dart';

class SignupOtpView extends StatelessWidget {
  const SignupOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomOtpView(
      image: AppImages.signUpLogo,
      color: const Color(0xFF14b4ca),
      textButton: 'Verify & Setup',
      reditNumber: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SignupView()));
      },
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SigninForm()));
      },
    );
  }
}
