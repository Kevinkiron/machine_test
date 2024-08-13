import 'package:flutter/material.dart';
import 'package:swift_service/utils/styles/text_styles.dart';
import 'package:swift_service/utils/theme/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
          color: const Color(0xFF056C95),
          borderRadius: BorderRadius.circular(15)),
      child: Center(
          child: KStyles().reg(
        text: 'Receive Verification Code',
        size: 14,
        color: AppColors.white,
      )),
    );
  }
}