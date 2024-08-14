import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:swift_service/src/authentication_view/signup_otp_view.dart';
import 'package:swift_service/utils/global_extension.dart';
import 'package:swift_service/utils/styles/text_styles.dart';
import 'package:swift_service/utils/theme/app_colors.dart';

import '../../utils/app_images.dart';
import 'signin_form.dart';
import 'widgets/app_button.dart';
import 'widgets/custom_textfield.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF14b4ca),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        AppImages.signUpLogo,
                        fit: BoxFit.contain,
                        width: 200,
                        height: 200,
                      ),
                    ),
                    Expanded(
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
                            KStyles().med(
                              text: 'Welcome to Swift Service!',
                              size: 30,
                              height: 1.2,
                              overflow: TextOverflow.visible,
                            ),
                            10.height,
                            KStyles().light(
                              text: 'Sign up to simplify your services.',
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
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SignupOtpView()));
                              },
                            ),
                            20.height,
                            Center(
                              child: RichText(
                                  text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Already a member?',
                                    style: KStyles()
                                        .reg(
                                            text: '',
                                            size: 16,
                                            color: Colors.grey)
                                        .style,
                                  ),
                                  WidgetSpan(child: 7.width),
                                  TextSpan(
                                      text: 'Signin',
                                      style: KStyles()
                                          .reg(
                                              text: '',
                                              size: 16,
                                              color: AppColors.primary)
                                          .style,
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const SigninForm()),
                                          );
                                        }),
                                ],
                              )),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
