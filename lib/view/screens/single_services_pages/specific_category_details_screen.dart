import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../controller/listing_controller/listing_controller.dart';
import '../../../controller/specific_category_controller/specific_category_controller.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/style/app_text_styles.dart';
import '../../widget/carousel_container.dart';
import '../constant/constans.dart';


class SpecificCategoryDetailsScreen extends StatelessWidget {
  SpecificCategoryDetailsScreen({super.key});

  final _specificCategoryController = Get.put(SpecificCategoryController());
  final _listingController = Get.put(ListingDetailController());

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
                  width: 393.w,
                  height: 96.h,
                  child: Image.network(
                    _specificCategoryController
                        .subcategory
                        .value
                        ?.heroSectionImg ?? AppConstants.defaultImageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverList.builder(
                itemCount: _specificCategoryController.specificCategories.length,
                itemBuilder: (context, categoryIndex) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 270.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              _specificCategoryController
                                  .specificCategories[categoryIndex]
                                  .name,
                              style: AppTextStyle.bold24,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(
                            height: 200.h,
                            child: CarouselSlider.builder(
                              itemCount: _specificCategoryController.specificCategories[categoryIndex].listings.length,
                              itemBuilder: (context, listingIndex, realIndex) {
                                final listingItem = _specificCategoryController.specificCategories[categoryIndex].listings[listingIndex];
                                return GestureDetector(
                                  onTap: (){
                                    _listingController.fetchListingDetails(listingItem.id);
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CarouselContainer(
                                      imagePath: listingItem.mainImage,
                                      isNetworkImage: true,
                                      title: listingItem.name,
                                      location: listingItem.location,
                                      personIcon: AssetPath.personImage,
                                      clockIcon: AssetPath.clockImage,
                                    ),
                                  ),
                                );
                              },
                              options: CarouselOptions(
                                height: 160.h,
                                autoPlay: true,
                                enlargeCenterPage: false,
                                aspectRatio: 16 / 9,
                                viewportFraction: 0.83,
                                autoPlayInterval: const Duration(seconds: 3),
                                onPageChanged: (index, reason) {
                                  _specificCategoryController.changeSliderIndex(categoryIndex, index);
                                },
                              ),
                            ),
                          ),

                         Obx(()=> Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: List.generate(
                             _specificCategoryController.specificCategories[categoryIndex].listings.length,
                                 (indicatorIndex) {

                               final isActive = _specificCategoryController.sliderIndices[categoryIndex]?.value == indicatorIndex;
                               return AnimatedContainer(
                                 duration: const Duration(milliseconds: 300),
                                 margin: const EdgeInsets.symmetric(horizontal: 4),
                                 width: isActive ? 16 : 6,
                                 height: 6,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(30),
                                   color: isActive ? AppColors.primaryColor : AppColors.lightGrey,
                                 ),
                               );
                             },
                           ),
                         ),)
                        ],
                      ),
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