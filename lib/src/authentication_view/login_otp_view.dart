import 'package:flutter/material.dart';
import 'package:swift_service/bottom_nav.dart';
import 'package:swift_service/src/authentication_view/login_view.dart';
import 'package:swift_service/src/authentication_view/widgets/custom_otp_view.dart';
import 'package:swift_service/utils/app_images.dart';

class LoginOtpView extends StatelessWidget {
  const LoginOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomOtpView(
      image: AppImages.loginLogo,
      color: Color(0xFF207ec2),
      textButton: 'Verify & Login',
      reditNumber: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginView()));
      },
      onTap: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const BottomNav(),
        ));
      },
    );
  }
}
