
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/style/appColor.dart';
import '../../view_models/controller/recovery_verification_controller.dart';

class RecoveryVerificationScreen extends StatelessWidget {
  RecoveryVerificationScreen({super.key});

  final RecoveryVerificationController _controller = Get.find();
  Widget _buildOtpBox(int index) {
    return Obx(() => AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: _controller.hasError.value
              ? Colors.red
              : _controller.focusNodes[index].hasFocus
              ? _controller.goldColor
              : Colors.grey.shade300,
          width: 2,
        ),
        boxShadow: _controller.focusNodes[index].hasFocus
            ? [
          BoxShadow(
            color: _controller.goldColor.withOpacity(0.2),
            blurRadius: 8,
            spreadRadius: 1,
            offset: const Offset(0, 2),
          ),
        ]
            : [],
      ),
      child: TextField(
        controller: _controller.controllers[index],
        focusNode: _controller.focusNodes[index],
        maxLength: 1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        onChanged: (value) => _controller.onChanged(value, index),
        decoration: const InputDecoration(
          counterText: "",
          border: InputBorder.none,
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 60),
              const Text("Verification",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'PlayfairDisplay')),
              const SizedBox(height: 10),
              const Text("We sent Verification code to your email",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Inter',
                      color: Colors.black54)),
              const SizedBox(height: 40),

              // OTP Inputs
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, _buildOtpBox),
              ),

              Obx(() => _controller.hasError.value
                  ? Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  'Incorrect code. Please try again.',
                  style: TextStyle(
                      color: Colors.red.shade400, fontSize: 14),
                ),
              )
                  : const SizedBox()),

              const SizedBox(height: 40),

              // Confirm Button
              Obx(() => SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _controller.isVerifying.value
                      ? null
                      : _controller.verifyCode,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _controller.goldColor,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    elevation: 4,
                  ),
                  child: _controller.isVerifying.value
                      ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    ),
                  )
                      : const Text('Confirm',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Inter')),
                ),
              )),

              const SizedBox(height: 20),

              // Resend Link
              Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Didn't receive a code? ",
                      style: TextStyle(fontFamily: 'Inter')),
                  GestureDetector(
                    onTap: _controller.start.value == 0
                        ? _controller.startTimer
                        : null,
                    child: Text("Resend",
                        style: TextStyle(
                            color: _controller.goldColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Inter')),
                  ),
                ],
              )),

              const SizedBox(height: 10),

              // Timer
              Obx(() => Text(
                '00:${_controller.start.value.toString().padLeft(2, '0')} sec',
                style: TextStyle(
                  color: _controller.goldColor,
                  fontSize: 16,
                  fontFamily: 'Inter',
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
