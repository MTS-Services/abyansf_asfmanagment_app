import 'package:abyansf_asfmanagment_app/utils/style/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void customSnackBar(String title, String message, {Color? backgroundColor}) {
  Get.snackbar(
    title,
    message,
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: backgroundColor ?? AppColors.primaryColor,
    colorText: Colors.white,
    borderRadius: 12,
    margin: const EdgeInsets.all(15),
    icon: const Icon(Icons.check_circle_outline, color: Colors.white, size: 28),
    duration: const Duration(seconds: 3),
    forwardAnimationCurve: Curves.easeInOutBack,
    reverseAnimationCurve: Curves.easeInCubic,
  );
}
