import 'package:abyansf_asfmanagment_app/view/auth/createPasswordScreen.dart';
import 'package:abyansf_asfmanagment_app/view/auth/recoverScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';

import 'package:get/get_core/src/get_main.dart';

import '../../utils/style/appColor.dart';

class RecoveryVerificationScreen extends StatefulWidget {
  RecoveryVerificationScreen({super.key});

  @override
  State<RecoveryVerificationScreen> createState() => _RecoveryVerificationScreenPageState();
}

class _RecoveryVerificationScreenPageState extends State<RecoveryVerificationScreen>
    with SingleTickerProviderStateMixin {
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());
  final List<TextEditingController> _controllers = List.generate(
    4,
        (_) => TextEditingController(),
  );

  Timer? _timer;
  int _start = 59;
  bool _hasError = false;
  bool _isVerifying = true;

  final Color goldColor = const Color(0xFFD1B47F);

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    for (var controller in _controllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void startTimer() {
    setState(() {
      _start = 59;
    });

    _timer?.cancel();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start == 0) {
        timer.cancel();
      } else {
        setState(() => _start--);
      }
    });
  }

  void _onChanged(String value, int index) {
    if (value.isNotEmpty && index < 3) {
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
    }
  }

  Future<void> _verifyCode() async {
    setState(() {
      _isVerifying = true;
      _hasError = false;
    });

    final enteredCode = _controllers
        .map((controller) => controller.text)
        .join();

    await Future.delayed(const Duration(seconds: 2)); // simulate API delay

    const correctCode = '1234';

    if (enteredCode == correctCode) {
      // Success
      setState(() {
        _isVerifying = false;
      });

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Verification successful!')));
    } else {
      // Error
      setState(() {
        _hasError = true;
        _isVerifying = false;
      });
    }
  }

  Widget _buildOtpBox(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: _hasError
              ? Colors.red
              : _focusNodes[index].hasFocus
              ? goldColor
              : Colors.grey.shade300,
          width: 2,
        ),
        boxShadow: _focusNodes[index].hasFocus
            ? [
          BoxShadow(
            color: goldColor.withOpacity(0.2),
            blurRadius: 8,
            spreadRadius: 1,
            offset: const Offset(0, 2),
          ),
        ]
            : [],
      ),
      child: TextField(
        controller: _controllers[index],
        focusNode: _focusNodes[index],
        maxLength: 1,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        onChanged: (value) => _onChanged(value, index),
        decoration: const InputDecoration(
          counterText: "",
          border: InputBorder.none,
        ),
      ),
    );
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

              // OTP Input
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, _buildOtpBox),
              ),

              if (_hasError)
                Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: Text(
                    'Incorrect code. Please try again.',
                    style: TextStyle(color: Colors.red.shade400, fontSize: 14),
                  ),
                ),

              const SizedBox(height: 40),

              // Confirm Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed:(){
                    Get.to(()=>Createpasswordscreen());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: goldColor,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    elevation: 4,
                  ),
                  child: _isVerifying
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
              ),

              const SizedBox(height: 20),

              // Resend Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Didn't receive a code? ",
                    style: TextStyle(fontFamily: 'Inter'),
                  ),
                  GestureDetector(
                    onTap: _start == 0
                        ? () {
                      startTimer();
                      // Add resend logic here
                    }
                        : null,
                    child: Text(
                      "Resend",
                      style: TextStyle(
                        color: goldColor,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              Text(
                '00:${_start.toString().padLeft(2, '0')} sec',
                style: TextStyle(
                  color: goldColor,
                  fontSize: 16,
                  fontFamily: 'Inter',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
