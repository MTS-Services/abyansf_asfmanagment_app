import 'package:abyansf_asfmanagment_app/utils/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData themeData() {
  return ThemeData(
    fontFamily: "PlayfairDisplay",
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16,
          fontFamily: 'PlayfairDisplay',
        ),
        foregroundColor: AppColors.blackColor,
        backgroundColor: AppColors.primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        shadowColor: const Color(0x99C7AE6A),
        elevation: 10,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      hintStyle: TextStyle(
        color: AppColors.hintTextColor,
        fontSize: 14.sp,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        height: 1.50,
      ),
      fillColor: AppColors.secondaryColor,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.transparent),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.primaryColor, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.red, width: 2),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.primaryColor),
      ),
    ),
  );
}
