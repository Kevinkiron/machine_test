import 'package:flutter/material.dart';
import 'package:swift_service/utils/string_const.dart';

import '../theme/app_colors.dart';

class KStyles {
  //*--------(light)
  Text light({
    required String text,
    Color color = AppColors.black,
    double? height,
    bool? softWrap,
    required double size,
    int? maxLines,
    TextAlign? textAlign,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    TextOverflow overflow = TextOverflow.ellipsis,
  }) {
    return Text(
      textAlign: textAlign,
      maxLines: maxLines,
      softWrap: softWrap,
      overflow: overflow,
      text,
      style: TextStyle(
        fontFamily: StringConst.ubuntu,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        fontSize: size,
        height: height,
        color: color,
        fontWeight: FontWeight.w300,
      ),
    );
  }

//!------------(reg)--------------
  Text reg({
    required String text,
    Color color = AppColors.black,
    double? height,
    bool? softWrap,
    required double size,
    int? maxLines,
    TextAlign? textAlign,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    TextOverflow overflow = TextOverflow.ellipsis,
  }) {
    return Text(
      textAlign: textAlign,
      maxLines: maxLines,
      softWrap: softWrap,
      overflow: overflow,
      text,
      style: TextStyle(
        fontFamily: StringConst.ubuntu,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        fontSize: size,
        height: height,
        color: color,
        fontWeight: FontWeight.w500,
      ),
    );
  }

//!-------------(med)-------------------
  Text med({
    required String text,
    Color color = AppColors.black,
    double? height,
    bool? softWrap,
    required double size,
    int? maxLines,
    TextAlign? textAlign,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    TextOverflow overflow = TextOverflow.ellipsis,
  }) {
    return Text(
      textAlign: textAlign,
      maxLines: maxLines,
      softWrap: softWrap,
      overflow: overflow,
      text,
      style: TextStyle(
        fontFamily: StringConst.ubuntu,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        fontSize: size,
        height: height,
        color: color,
        fontWeight: FontWeight.w800,
      ),
    );
  }

//!-------------(bold)------------------
  Text bold({
    required String text,
    Color color = AppColors.black,
    double? height,
    bool? softWrap,
    required double size,
    int? maxLines,
    TextAlign? textAlign,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    TextOverflow overflow = TextOverflow.ellipsis,
  }) {
    return Text(
      textAlign: textAlign,
      maxLines: maxLines,
      softWrap: softWrap,
      overflow: overflow,
      text,
      style: TextStyle(
        fontFamily: StringConst.ubuntu,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        fontSize: size,
        height: height,
        color: color,
        fontWeight: FontWeight.w900,
      ),
    );
  }

//!-------------(bold)------------------
  Text logo({
    required String text,
    Color color = AppColors.black,
    double? height,
    bool? softWrap,
    required double size,
    int? maxLines,
    TextAlign? textAlign,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    TextOverflow overflow = TextOverflow.ellipsis,
  }) {
    return Text(
      textAlign: textAlign,
      maxLines: maxLines,
      softWrap: softWrap,
      overflow: overflow,
      text,
      style: TextStyle(
        fontFamily: StringConst.sfPro,
        decoration: decoration,
        decorationColor: decorationColor,
        decorationStyle: decorationStyle,
        decorationThickness: decorationThickness,
        fontSize: size,
        height: height,
        color: color,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
