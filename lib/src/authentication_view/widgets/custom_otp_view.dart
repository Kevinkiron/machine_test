import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:swift_service/bottom_nav.dart';
import 'package:swift_service/utils/global_extension.dart';
import 'package:swift_service/utils/theme/app_colors.dart';

import '../../../utils/styles/text_styles.dart';
import 'app_button.dart';

class CustomOtpView extends StatelessWidget {
  const CustomOtpView({super.key});

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
                    Expanded(
                      flex: 1,
                      child: Image.asset(
                        'assets/images/login_logo.png',
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
                            KStyles().med(text: 'Security Check', size: 30),
                            15.height,
                            KStyles().reg(
                              text: 'Please Verify code send',
                              size: 14,
                            ),
                            10.height,
                            OtpTextField(
                              fieldWidth: 65,
                              cursorColor: AppColors.black,
                              margin: const EdgeInsets.all(10),
                              numberOfFields: 4,
                              showCursor: true,
                              borderColor: const Color(0xFF512DA8),
                              borderRadius: BorderRadius.circular(10),
                              showFieldAsBox: true,
                              onCodeChanged: (String code) {},
                              onSubmit: (String verificationCode) {},
                            ),
                            30.height,
                            AppButton(
                              text: 'Verify & Login',
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const BottomNav()),
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
                                    style:
                                        KStyles().med(text: '', size: 16).style,
                                  ),
                                  WidgetSpan(child: 7.width),
                                  TextSpan(
                                      text: 'Signup',
                                      style: KStyles()
                                          .med(
                                              text: '',
                                              size: 16,
                                              color: const Color(0xFF056C95))
                                          .style,
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {}),
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
