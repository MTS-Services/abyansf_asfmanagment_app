import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appStyle.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/home_screen.dart';
import 'package:abyansf_asfmanagment_app/view/widget/venu_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DesertActivitiesScreen extends StatefulWidget {
  const DesertActivitiesScreen({super.key});

  @override
  State<DesertActivitiesScreen> createState() => _DesertActivitiesScreenState();
}

class _DesertActivitiesScreenState extends State<DesertActivitiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 96,
              width: double.infinity,
              child: Image.asset(AssetPath.image, fit: BoxFit.cover),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Pools', style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 12),
                  VenueCard(
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
                      Text(
                        'Beach',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Spacer(),
                      Text(
                        'See all',
                        style:Theme.of(context).textTheme.bodyMedium
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  CarouselSlider.builder(
                    itemCount: 3,
                    itemBuilder: (context, index, realIndex) {
                      return VenueCard(
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
                      viewportFraction: 0.8,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
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
                                    color: currentIndex == index
                                        ? AppColors.primaryColor
                                        : Colors.red,
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
