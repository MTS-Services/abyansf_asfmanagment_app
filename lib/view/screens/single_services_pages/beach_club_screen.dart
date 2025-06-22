import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appStyle.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/booking_history_page.dart';
import 'package:abyansf_asfmanagment_app/view_models/venu_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BeachClubScreen extends StatelessWidget {
  const BeachClubScreen({super.key});

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
              child: Image.asset(AssetPath.rectangle49, fit: BoxFit.cover),
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
                    imagePath: AssetPath.rectangle49,
                    title: "Aura Sky Pool",
                    location: "Jumeirah Beach Residence",
                    personIcon: AssetPath.personImage,
                    clockIcon: AssetPath.clockImage,
                    width: double.infinity,
                    height: 167,
                  ),
                  const SizedBox(height: 30),
                  Text('Beach', style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 12),
                  CarouselSlider.builder(
                    itemCount: 5,
                    itemBuilder: (context, index, realIndex) {
                      return  VenueCard(
                        imagePath: AssetPath.frameImage,
                        title: "Eva beach",
                        location: "Jumeirah Beach Residence",
                        personIcon: AssetPath.personImage,
                        clockIcon: AssetPath.clockImage,
                        width: 297,

                      );
                    },
                    options: CarouselOptions(
                      height: 167,
                      enlargeCenterPage: true,
                      autoPlay: false,
                      aspectRatio: 16 / 9,
                      autoPlayInterval: const Duration(seconds: 3),
                      viewportFraction: 0.8,
                    ),
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
