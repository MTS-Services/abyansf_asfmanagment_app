import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_color.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_style.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/home_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/massage.dart';
import 'package:abyansf_asfmanagment_app/view/widget/carousel_container.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../view_models/controller/carousel_controller.dart';

class DesertActivitiesScreen extends StatelessWidget {
  DesertActivitiesScreen({super.key});

  final CarouselSliderControllers _carouselSliderController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.asset(AssetPath.image, fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white70.withAlpha(100),
                        child: Icon(Icons.keyboard_arrow_left_outlined),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('camp', style: AppTextStyle.bold24),
                  const SizedBox(height: 12),
                  CarouselContainer(
                    imagePath: AssetPath.image12,
                    title: "Camel Camp",
                    location: "Jumeirah Beach Residence",
                    personIcon: AssetPath.personImage,
                    clockIcon: AssetPath.clockImage,
                    width: double.infinity,
                    height: 167,
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Text('Desert', style: AppTextStyle.bold24),
                      Spacer(),
                      Text(
                        'See all',
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: AppStyles.weightMedium,
                          fontSize: AppStyles.fontL,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  InkWell(
                    onTap: () {
                      Get.to(() => Massage());
                    },
                    child: CarouselSlider.builder(
                      itemCount: 3,
                      itemBuilder: (context, index, realIndex) {
                        return CarouselContainer(
                          imagePath: AssetPath.image13,
                          title: 'Single Buggy Ride',
                          location: 'Jumeirah Beach Residence',
                          personIcon: AssetPath.personImage,
                          clockIcon: AssetPath.clockImage,
                        );
                      },
                      options: CarouselOptions(
                        height: 220,
                        enlargeCenterPage: false,
                        autoPlay: false,
                        aspectRatio: 16 / 9,
                        autoPlayInterval: const Duration(seconds: 3),
                        viewportFraction: 0.83,
                        onPageChanged: (index, reason) {
                          _carouselSliderController.currentIndex.value = index;
                        },
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(images.length, (index) {
                            return GestureDetector(
                              onTap: () {
                                _carouselSliderController.currentIndex.value;
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Container(
                                  width:
                                      _carouselSliderController.currentIndex ==
                                          index
                                      ? 16
                                      : 5,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color:
                                        _carouselSliderController
                                                .currentIndex ==
                                            index
                                        ? AppColors.primaryColor
                                        : AppColors.lightGrey,
                                  ),
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
