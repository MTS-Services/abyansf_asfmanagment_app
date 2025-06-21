import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appStyle.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                'Services',
                style: TextStyle(
                  fontSize: AppStyles.fontXXL,
                  fontWeight: AppStyles.weightBold,
                  color: AppColors.blackColor,
                ),
              ),
              const SizedBox(height: 7),
              SizedBox(
                height: 145,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: AssetImage(
                              AssetPath.splashScreen1,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            'Name',
                            style: TextStyle(
                              fontSize: AppStyles.fontM,
                              fontWeight: AppStyles.weightBold,
                              color: AppColors.blackColor,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Text(
                'Highlight',
                style: TextStyle(
                  fontSize: AppStyles.fontXXL,
                  fontWeight: AppStyles.weightBold,
                  color: AppColors.blackColor,
                ),
              ),
              const SizedBox(height: 10),
              /* CarouselSlider.builder(
                itemCount: 5,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                   width: 296,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Center(
                      child: Text(
                        'Slide ${index + 1}',
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                },
                options: CarouselOptions(
                  height: 216,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayInterval: const Duration(seconds: 3),
                  viewportFraction: 0.8,
                ),
              )*/
              Container(
                width: 296,
                height: 225,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: DecorationImage(
                    image: AssetImage(AssetPath.planeImage),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16,right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     // const SizedBox(height: 10,),
                      Center(
                        child: Text(
                          'Lusery Diner venues',
                          style: TextStyle(
                            fontSize: AppStyles.fontM,
                            fontWeight: AppStyles.weightBold,
                            color: AppColors.lightWhite6,
                          ),
                        ),
                      ),
                      Center(
                        child:
                        Text('this is actual description ',style: TextStyle(
                          fontSize: AppStyles.fontS,
                          fontWeight: AppStyles.weightBold,
                          color: AppColors.lightWhite9,
                        ),),
                      ),
                      const SizedBox(height: 110,),
                      Text(
                        'Lusery Diner venues',
                        style: TextStyle(
                          fontSize: AppStyles.fontXL,
                          fontWeight: AppStyles.weightBold,
                          color: AppColors.lightWhite6,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on,color: AppColors.lightWhite6,),
                          Text('Basundhara city',style: TextStyle(
                            fontSize: AppStyles.fontS,
                            fontWeight: AppStyles.weightBold,
                            color: AppColors.lightWhite9,
                          ),),
                          Spacer(),
                          Container(
                            height: 28,
                            width: 35.58,
                            decoration: BoxDecoration(
                              border: Border.all(color: AppColors.laserColor),
                              borderRadius: BorderRadius.circular(8)
                            ),
                            child: Center(child:Image.asset(AssetPath.personImage,scale: 5,),),
                          ),
                          const SizedBox(width: 5,),
                          Container(
                            height: 28,
                            width: 35.58,
                            decoration: BoxDecoration(
                                border: Border.all(color: AppColors.laserColor),
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Center(child:Image.asset(AssetPath.personImage,scale: 5,),),
                          ),
                        ],
                      )

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
