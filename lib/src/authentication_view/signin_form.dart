import 'package:flutter/material.dart';
import 'package:swift_service/bottom_nav.dart';
import 'package:swift_service/utils/common_widgets/app_button.dart';
import 'package:swift_service/utils/app_images.dart';
import 'package:swift_service/utils/global_extension.dart';

import '../../utils/styles/text_styles.dart';
import '../../utils/theme/app_colors.dart';

class SigninForm extends StatelessWidget {
  const SigninForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: _appbar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  KStyles().med(
                    text: 'Let’s know more \nabout you',
                    size: 31,
                    overflow: TextOverflow.visible,
                  ),
                  20.height,
                  KStyles().reg(
                    text: 'Provide Basic information to setup your account',
                    size: 14,
                    overflow: TextOverflow.visible,
                  ),
                  30.height,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      KStyles().reg(
                        text: 'Name',
                        size: 14,
                        overflow: TextOverflow.visible,
                      ),
                      5.height,
                      Row(
                        children: [
                          Expanded(
                              child: _textfieldCommon(hintext: 'First Name')),
                          20.width,
                          Expanded(
                              child: _textfieldCommon(hintext: 'Last Name')),
                        ],
                      ),
                    ],
                  ),
                  20.height,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      KStyles().reg(
                        text: 'Email Address',
                        size: 14,
                        overflow: TextOverflow.visible,
                      ),
                      5.height,
                      _textfieldCommon(hintext: 'Enter your email address')
                    ],
                  ),
                ],
              ),
            ),
            AppButton(
              text: 'Finish Setup',
              onTap: () {
                _showPopup(context);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => const BottomNav(),
                //   ),
                // );
              },
            ),
            5.height,
          ],
        ),
      ),
    );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      surfaceTintColor: AppColors.white,
      shadowColor: AppColors.black,
      elevation: 2,
      backgroundColor: AppColors.white,
      leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back_ios_sharp)),
      title: KStyles().med(text: 'Get Started', size: 16),
      centerTitle: true,
    );
  }

  TextFormField _textfieldCommon({required String hintext}) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: hintext,
        hintStyle: KStyles().reg(text: '', size: 16, color: Colors.grey).style,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(0.1),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey.withOpacity(0.4),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xFF14b4ca),
          ),
        ),
      ),
    );
  }

  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        Future.delayed(const Duration(seconds: 2), () {
          if (context.mounted) {
            Navigator.of(context).pop();
          }
          if (context.mounted) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const BottomNav(),
              ),
            );
          }
        });
        return AlertDialog(
          backgroundColor: AppColors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFecf8f4),
                ),
                child: Image.asset(
                  AppImages.signInPopUp,
                  height: 60,
                  width: 60,
                ),
              ),
              20.height,
              Text(
                'Congratulations!',
                style: KStyles()
                    .med(text: '', size: 24, color: Colors.black)
                    .style,
              ),
              10.height,
              Text(
                'Your swift service account has been created successfully!',
                style: KStyles()
                    .reg(text: '', size: 14, color: Colors.black54)
                    .style,
                textAlign: TextAlign.center,
              ),
              20.height,
            ],
          ),
        );
      },
    );
  }
}
