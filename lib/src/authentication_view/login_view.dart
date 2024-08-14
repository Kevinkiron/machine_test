import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:swift_service/src/authentication_view/login_otp_view.dart';
import 'package:swift_service/src/authentication_view/signup_view.dart';
import 'package:swift_service/utils/app_images.dart';
import 'package:swift_service/utils/global_extension.dart';
import 'package:swift_service/utils/styles/text_styles.dart';

import '../../utils/common_widgets/app_button.dart';
import 'widgets/custom_textfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF207ec2),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _logoImage(),
                    _contentTextField(context),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Expanded _contentTextField(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            15.height,
            KStyles().med(text: 'Welcome back!', size: 30),
            15.height,
            KStyles().light(
              text: 'Sign in for fast services and new offers.',
              size: 14,
            ),
            20.height,
            KStyles().reg(text: 'Enter phone number', size: 14),
            10.height,
            const CustomTextfield(),
            30.height,
            AppButton(
              text: 'Receive Verification Code',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginOtpView()),
                );
              },
            ),
            20.height,
            Center(
              child: RichText(
                  text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Not a member?',
                    style: KStyles()
                        .reg(text: '', size: 16, color: Colors.grey)
                        .style,
                  ),
                  WidgetSpan(child: 7.width),
                  TextSpan(
                      text: 'Signup',
                      style: KStyles()
                          .reg(
                            text: '',
                            size: 16,
                          )
                          .style,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignupView()),
                          );
                        }),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }

  Expanded _logoImage() {
    return Expanded(
      flex: 1,
      child: Image.asset(
        AppImages.loginLogo,
        fit: BoxFit.contain,
        width: 200,
        height: 200,
      ),
    );
  }
}
