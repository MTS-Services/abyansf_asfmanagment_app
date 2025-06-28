import 'package:abyansf_asfmanagment_app/view/auth/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/style/appColor.dart';
import '../../view_models/controller/verification_controller.dart';
import 'createPasswordScreen.dart';

class VerificationScreen extends StatelessWidget {
  VerificationScreen({super.key});
  final VerificationController controller = Get.find();

  Widget buildOtpBox(int index) {
    return Obx(() {
      return AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: controller.hasError.value
                ? Colors.red
                : controller.focusNodes[index].hasFocus
                ? controller.goldColor
                : Colors.grey.shade300,
            width: 2,
          ),
          boxShadow: controller.focusNodes[index].hasFocus
              ? [
            BoxShadow(
              color: controller.goldColor.withOpacity(0.2),
              blurRadius: 8,
              spreadRadius: 1,
              offset: const Offset(0, 2),
            ),
          ]
              : [],
        ),
        child: TextField(
          controller: controller.controllers[index],
          focusNode: controller.focusNodes[index],
          maxLength: 1,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          onChanged: (value) => controller.onChanged(value, index),
          decoration: const InputDecoration(counterText: "", border: InputBorder.none),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  const Text(
                    "Verification",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'PlayfairDisplay',
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "We sent Verification code to your email",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Inter',
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(4, buildOtpBox),
                  ),
                  Obx(() => controller.hasError.value
                      ? Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text(
                      'Incorrect code. Please try again.',
                      style: TextStyle(color: Colors.red.shade400, fontSize: 14),
                    ),
                  )
                      : const SizedBox()),
                  const SizedBox(height: 40),
                  Obx(() => SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: (){
                        Get.to(()=>CreatePasswordScreen());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: controller.goldColor,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        elevation: 4,
                      ),
                      child: controller.isVerifying.value
                          ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 2,
                        ),
                      )
                          : const Text(
                        'Confirm',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  )),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Didn't receive a code? ", style: TextStyle(fontFamily: 'Inter')),
                      Obx(() => GestureDetector(
                        onTap: controller.start.value == 0 ? controller.startTimer : null,
                        child: Text(
                          "Resend",
                          style: TextStyle(
                            color: controller.goldColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Inter',
                          ),
                        ),
                      )),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Obx(() => Text(
                    '00:${controller.start.value.toString().padLeft(2, '0')} sec',
                    style: TextStyle(
                      color: controller.goldColor,
                      fontSize: 16,
                      fontFamily: 'Inter',
                    ),
                  )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
