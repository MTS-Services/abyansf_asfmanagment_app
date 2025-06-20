import 'dart:async';

import 'package:flutter/material.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/style/appColor.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int currentIndex = 0;
  late Timer _timer;

  final List<String> images = [
    AssetPath.splashScreen1,  // First image
    AssetPath.splashScreen2,  // First image
    AssetPath.splashScreen3,  // First image// Third image
  ];
  void initState() {
    super.initState();
    _startTimer();  // Start the timer when the widget is initialized
  }

  // Function to change the image every 3 seconds
  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % images.length; // Loop through images
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();  // Cancel the timer when the widget is disposed
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              images[currentIndex],
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Elevate Your World.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Playfair Display',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5),
              SizedBox(
                width: 353,
                child: Text(
                  'Supercars that turn heads. Yachts that rule the seas.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFFF5F5F5),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      child: Text(
                        'Skip',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xFFC7AE6A) /* Laser-300 */,
                          fontSize: 16,
                          fontFamily: 'Playfair Display',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onTap: (){},
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(images.length, (index)  {
                            return GestureDetector(
                              onTap: (){
                                setState(() {
                                  currentIndex = index;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Container(
                                  width: currentIndex == index ? 16 : 5,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: currentIndex == index ? AppColors.primaryColor : Colors.red,
                                  ),
                                ),
                              ),
                            );
                          })
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.primaryColor
                          ),
                          child: Icon(Icons.arrow_forward_outlined,color: Colors.white,)),
                      onTap: (){},
                    )
                  ],
                ),
              SizedBox(height: 35),
            ],
          ),
        ],
      ),
    );
  }
}
