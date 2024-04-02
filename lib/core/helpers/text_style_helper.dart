// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum CustomTextStyles {
  s8w400,
  s9w400,
  s8w600,
  s9w600,
  s13w500,
  s15w600,
  s15w500,
  s15w400,
  s8w700,
  s10w400,
  s12w200,
  s12w400,
  s12w500,
  s12w600,
  s12w700,
  s14w200,
  s14w400,
  s14w500,
  s14w600,
  s14w700,
  s14w800,
  s16w200,
  s16w400,
  s16w500,
  s16w600,
  s16w700,
  s17w500,
  s18w400,
  s18w500,
  s36w500,
  s36w700,
  s20w500,
  s100w500,

  s20w700,
  s20w600,
  s24w500,
  s24w600,

  s24w700,
  s26w500,
  s30w600,
  s33w500,
  s34w500,
  s40w700,
  s50w500,
  s60w500,
  s70w600,
  s80w500
}

enum FontTypes { Inter }

TextStyle ts(
  CustomTextStyles textStyle, {
  Color color = Colors.white,
  FontTypes fontFamily = FontTypes.Inter,
}) {
  switch (textStyle) {
    case CustomTextStyles.s100w500:
      return TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 100.sp,
          fontFamily: fontFamily.name,
          color: color);
     case CustomTextStyles.s8w400:
      return TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 8.sp,
          fontFamily: fontFamily.name,
          color: color);
     case CustomTextStyles.s14w700:
      return TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s12w700:
      return TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 12.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s16w600:
      return TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s9w400:
      return TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 9.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s20w600:
      return TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s80w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 80.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s9w600:
      return TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 9.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s8w600:
      return TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 7.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s33w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 33.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s15w600:
      return TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 15.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s24w600:
      return TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 24.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s13w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 13.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s24w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 24.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s15w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 15.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s15w400:
      return TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 15.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s17w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 17.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s8w700:
      return TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 8.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s36w700:
      return TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 36.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s12w400:
      return TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 12.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s18w400:
      return TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 18.sp,
          fontFamily: fontFamily.name,
          color: color);

    case CustomTextStyles.s16w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s16w400:
      return TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s16w700:
      return TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s20w700:
      return TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 20.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s14w400:
      return TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s14w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 14.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s18w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s20w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s10w400:
      return TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 10.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s12w600:
      return TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 12.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s26w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 26.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s30w600:
      return TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 30.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s34w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 34.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s40w700:
      return TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 40.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s50w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 50.sp,
          fontFamily: fontFamily.name,
          color: color);
          case CustomTextStyles.s70w600:
      return TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 70.sp,
          fontFamily: fontFamily.name,
          color: color);
    case CustomTextStyles.s60w500:
      return TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 60.sp,
          fontFamily: fontFamily.name,
          color: color);
          
    default:
      return const TextStyle();
  }
}
