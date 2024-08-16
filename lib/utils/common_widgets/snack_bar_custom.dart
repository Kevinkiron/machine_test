import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

void customErrorSnackBar(
  BuildContext context, {
  required String message,
  Color backgroundColor = AppColors.red,
  TextStyle textStyle = const TextStyle(color: AppColors.white),
  SnackBarAction? action,
  Duration duration = const Duration(seconds: 3),
}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Center(
      child: Text(
        message,
        style: textStyle,
      ),
    ),
    backgroundColor: backgroundColor,
    action: action,
    duration: duration,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
  ));
}
