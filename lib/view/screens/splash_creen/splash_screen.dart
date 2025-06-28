import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/style/appColor.dart';
import '../../../view_models/controller/splash_screen.dart';
import '../../auth/onbording_screen.dart';


class SplashScreen extends StatelessWidget {
  final SplashController controller = Get.put(SplashController());

  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Obx(() => Positioned.fill(
            child: Image.asset(
              controller.images[controller.currentIndex.value],
              fit: BoxFit.cover,
            ),
          )),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Elevate Your World.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 30,
                  fontFamily: 'PlayfairDisplay',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5),
              const SizedBox(
                width: 353,
                child: Text(
                  'Supercars that turn heads. Yachts that rule the seas.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.lightWhite5,
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () => Get.to(() => OnbordingScreen()),
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.primaryColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Obx(() => Row(
                      children: List.generate(
                        controller.images.length,
                            (index) => GestureDetector(
                          onTap: () => controller.onDotTap(index),
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: Container(
                              width: controller.currentIndex.value == index
                                  ? 16
                                  : 5,
                              height: 4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color:
                                controller.currentIndex.value == index
                                    ? AppColors.primaryColor
                                    : Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
                  ),
                  GestureDetector(
                    onTap: controller.onNext,
                    child: const CircleAvatar(
                      backgroundColor: AppColors.primaryColor,
                      child: Icon(
                        Icons.arrow_forward_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 35),
            ],
          ),
        ],
      ),
    );
  }
}
