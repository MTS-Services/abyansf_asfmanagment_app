import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/specific_category_controller/specific_category_controller.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/style/app_text_styles.dart';
import '../../widget/carousel_container.dart';
import '../main_screen/home_screen.dart';

class SpecificCategoryDetailsScreen extends StatelessWidget {
   SpecificCategoryDetailsScreen({super.key});

  final _specificCategoryController = Get.put(SpecificCategoryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Obx(
          () => CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  width: 393,
                  height: 96,
                  child: Image.network(
                    _specificCategoryController
                            .subcategory
                            .value
                            ?.heroSectionImg ??
                        "https://static.vecteezy.com/system/resources/thumbnails/004/141/669/small_2x/no-photo-or-blank-image-icon-loading-images-or-missing-image-mark-image-not-available-or-image-coming-soon-sign-simple-nature-silhouette-in-frame-isolated-illustration-vector.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // SliverToBoxAdapter(
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: _specificCategoryController.subcategory.value != null
              //         ? Text(
              //       _specificCategoryController.subcategory.value!.name,
              //       style: AppTextStyle.bold24,
              //     )
              //         : const CircularProgressIndicator(),
              //   ),
              // ),
              // SliverToBoxAdapter(
              //   child: SizedBox(
              //     height: 300,
              //
              //     // child: _specificCategoryController.specificCategories.isEmpty
              //     //     ? Center(child: CircularProgressIndicator()) // লোডিং স্টেট
              //     //     : CarouselSlider.builder(
              //     //   itemCount: _specificCategoryController.specificCategories.length,
              //     //   itemBuilder: (context, index, realIndex) {
              //     //     final item = _specificCategoryController.specificCategories[index];
              //     //     return Container(
              //     //       margin: EdgeInsets.all(5.0),
              //     //       child: ClipRRect(
              //     //         borderRadius: BorderRadius.circular(8.0),
              //     //         child: ListView.builder(
              //     //           itemCount: item.listings.length,
              //     //           itemBuilder: (context, index) {
              //     //             final listing = item.listings[index];
              //     //             return  ListView.builder(
              //     //               itemCount: listing.subImages.length,
              //     //               itemBuilder: (context, index) {
              //     //                 return Image.network(listing.subImages[index]);
              //     //               },
              //     //             );
              //     //           },
              //     //         ),
              //     //       ),
              //     //     );
              //     //   },
              //     //   options: CarouselOptions(
              //     //     height: 300, // কন্টেইনারের সাথে মিল রেখে
              //     //     aspectRatio: 16/9,
              //     //     viewportFraction: 0.8,
              //     //     initialPage: 0,
              //     //     enableInfiniteScroll: true,
              //     //     reverse: false,
              //     //     autoPlay: true,
              //     //     autoPlayInterval: Duration(seconds: 3),
              //     //     autoPlayAnimationDuration: Duration(milliseconds: 800),
              //     //     autoPlayCurve: Curves.fastOutSlowIn,
              //     //     enlargeCenterPage: true,
              //     //     enlargeFactor: 0.3,
              //     //     scrollDirection: Axis.horizontal,
              //     //   ),
              //     // ),
              //
              //
              //     child: ListView.builder(
              //       scrollDirection: Axis.horizontal,
              //       itemCount: _specificCategoryController.specificCategories.length,
              //       itemBuilder: (context, index) {
              //       return Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Container(
              //           width: 100,
              //           color: Colors.blue,),
              //       );
              //       },
              //     ),
              //   ),
              // )
              SliverList.builder(
                itemCount: _specificCategoryController.specificCategories.length,
                itemBuilder: (context, index) {
                  final specificCategoryIndex =index;
                  return SizedBox(
                    height: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            _specificCategoryController
                                .specificCategories[index]
                                .name,
                            style: AppTextStyle.bold24,
                          ),
                        ),
                        SizedBox(
                          height: 200,
                          child: CarouselSlider.builder(
                            itemCount:_specificCategoryController.specificCategories[index].listings.length,
                            itemBuilder: (context, index, realIndex) {
                              final listingItem = _specificCategoryController.specificCategories[index].listings[index];
                              return CarouselContainer(
                                imagePath:listingItem.mainImage,
                                isNetworkImage: true,
                                title: listingItem.name,
                                location:listingItem.location,
                                personIcon: AssetPath.personImage,
                                clockIcon: AssetPath.clockImage,
                              );
                            },
                            options: CarouselOptions(
                              height: 190,
                              autoPlay: true,
                              enlargeCenterPage: false,
                              aspectRatio: 16 / 9,
                              viewportFraction: 0.83,
                              autoPlayInterval: const Duration(seconds: 3),
                              onPageChanged: (index, reason) {
                               _specificCategoryController.changeSliderIndex(specificCategoryIndex, index);
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(_specificCategoryController.specificCategories[index].listings.length, (index) {
                            final isActive =_specificCategoryController.sliderIndex[specificCategoryIndex][RxInt(specificCategoryIndex)]?.value == index;
                            return AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              width: isActive ? 16 : 6,
                              height: 6,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: isActive
                                    ? AppColors.primaryColor
                                    : AppColors.lightGrey,
                              ),
                            );
                          }),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
