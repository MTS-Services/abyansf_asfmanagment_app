import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/home_screen.dart';
import 'package:abyansf_asfmanagment_app/view/screens/single_services_pages/single_beach_club_screen.dart';
import 'package:abyansf_asfmanagment_app/view/widget/carousel_container.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../view_models/controller/carousel_controller.dart';
class BeachClubScreen extends StatelessWidget {
  const BeachClubScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 96,
              width: double.infinity,
              child: Image.asset(AssetPath.rectangle49, fit: BoxFit.cover),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Pools', style: AppTextStyle.bold24),
                  const SizedBox(height: 12),
                  CarouselContainer(
                    imagePath: AssetPath.rectangle49,
                    title: "Aura Sky Pool",
                    location: "Jumeirah Beach Residence",
                    personIcon: AssetPath.personImage,
                    clockIcon: AssetPath.clockImage,
                    width: double.infinity,
                    height: 167,
                  ),
                  const SizedBox(height: 25),
                  Text('Beach', style: AppTextStyle.bold24),
                  const SizedBox(height: 12),
                  GestureDetector(
                    onTap: (){
                      Get.off(SingleBeachClubScreen());
                    },
                    child: CarouselSlider.builder(
                      itemCount: images.length,
                      itemBuilder: (context, index, realIndex) {
                        return Padding(
                          padding: const EdgeInsets.all(8),
                          child: CarouselContainer(
                            imagePath: AssetPath.frameImage,
                            title: 'Lusery Dinner Venues',
                            location: 'Jumeirah Beach Residence',
                            personIcon: AssetPath.personImage,
                            clockIcon: AssetPath.clockImage,
                          ),
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
                                  width:  _carouselSliderController.currentIndex == index ? 16 : 5,
                                  height: 4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color:  _carouselSliderController.currentIndex == index
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
final CarouselSliderControllers _carouselSliderController = Get.find();
