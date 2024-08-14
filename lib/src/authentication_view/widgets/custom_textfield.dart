import 'package:flutter/material.dart';
import 'package:swift_service/utils/app_images.dart';
import 'package:swift_service/utils/global_extension.dart';
import 'package:swift_service/utils/styles/text_styles.dart';

import '../../../utils/theme/app_colors.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, this.controller});
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          CircleAvatar(
            minRadius: 20,
            backgroundColor: AppColors.transparent,
            child: Image.asset(
              AppImages.indiaIcon,
              width: 32,
              height: 32,
              fit: BoxFit.fill,
            ),
          ),
          5.width,
          KStyles().med(
            text: '+91',
            size: 16,
          ),
          10.width,
          Expanded(
            child: TextFormField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Eg: 6523 - 4566 - 67',
                hintStyle:
                    KStyles().reg(text: '', size: 16, color: Colors.grey).style,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
