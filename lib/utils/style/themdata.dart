import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appStyle.dart';
import 'package:flutter/material.dart';

ThemeData themeData() {
  return ThemeData(
    fontFamily: "PlayfairDisplay",
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(fontWeight: FontWeight.w700,
            fontSize: 16,
            fontFamily: 'PlayfairDisplay'),
        foregroundColor: Colors.black,
        backgroundColor: Color(0xFFC7AE6A),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        shadowColor: AppColors.primaryColor,
        elevation: 10,
      ),
    ),
    textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: AppStyles.fontXXL,
          fontWeight: AppStyles.weightBold,
          color: AppColors.blackColor,
        )
    ),
    inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          color: AppColors.lightBlackColor,
          fontSize: 12,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        filled: true,
        fillColor: AppColors.secondaryColor,
        enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(color: Colors.transparent),
  ),
  focusedBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(8),
  borderSide: const BorderSide(color: AppColors.primaryColor,),
  ),
  errorBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(8),
  borderSide: const BorderSide(color: AppColors.red),
  ),
  focusedErrorBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(8),
  borderSide: const BorderSide(color: AppColors.red),
  ),
  disabledBorder: OutlineInputBorder(
  borderRadius: BorderRadius.circular(8),
  borderSide: const BorderSide(color: AppColors.primaryColor),
  ),
  ),
  );
}
