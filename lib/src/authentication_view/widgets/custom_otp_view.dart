import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:swift_service/bottom_nav.dart';
import 'package:swift_service/src/authentication_view/login_view.dart';
import 'package:swift_service/utils/global_extension.dart';
import 'package:swift_service/utils/theme/app_colors.dart';

import '../../../utils/styles/text_styles.dart';
import '../../../utils/common_widgets/app_button.dart';

class CustomOtpView extends StatelessWidget {
  const CustomOtpView(
      {super.key,
      required this.image,
      required this.color,
      this.onCodeChanged,
      this.onSubmit,
      required this.textButton,
      this.onTap,
      this.reditNumber});
  final String image;
  final String textButton;
  final Color color;
  final void Function(String)? onCodeChanged;
  final void Function(String)? onSubmit;
  final void Function()? onTap;
  final void Function()? reditNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
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
                        image,
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
                            RichText(
                                text: TextSpan(
                              children: [
                                TextSpan(
                                  text:
                                      'Please verify with the code send to your phone \nnumber\t',
                                  style: KStyles()
                                      .light(text: '', size: 14, height: 1.5)
                                      .style,
                                ),
                                TextSpan(
                                    text: '7123456789\t',
                                    style: KStyles()
                                        .reg(text: '', size: 14, height: 1.5)
                                        .style,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {}),
                                WidgetSpan(
                                    alignment: PlaceholderAlignment.top,
                                    child: GestureDetector(
                                      onTap: reditNumber,
                                      child: Image.asset(
                                        'assets/icons/edit.png',
                                        width: 10,
                                        height: 10,
                                      ),
                                    )),
                              ],
                            )),
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
                              onCodeChanged: onCodeChanged,
                              onSubmit: onSubmit,
                            ),
                            30.height,
                            AppButton(
                              text: textButton,
                              onTap: onTap,
                            ),
                            20.height,
                            Center(
                              child: RichText(
                                  text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Didnt get code?',
                                    style:
                                        KStyles().reg(text: '', size: 16).style,
                                  ),
                                  WidgetSpan(child: 7.width),
                                  TextSpan(
                                      text: 'Resend',
                                      style: KStyles()
                                          .reg(
                                              text: '',
                                              size: 16,
                                              color: AppColors.primary)
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
