import 'package:abyansf_asfmanagment_app/controller/contact_whatsapp_controller/contact_whatsapp_controller.dart';
import 'package:abyansf_asfmanagment_app/utils/assets_path.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appStyle.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view/widget/chat_bubble.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/main_category_controller/main_category_controller.dart';
import '../../../controller/specific_category_controller/specific_category_controller.dart';
import '../../../models/main_category_model/main_category_model.dart';
import 'message_screen.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});

  // final List<Widget> lifeStyle = [
  //   BeachClubScreen(),
  //   BeachClubScreen(),
  //   BeachClubScreen(),
  //   BeachClubScreen(),
  // ];
  // final List<Widget> travel = [
  //   HotelAndVillasScreen(),
  //   YachtRequesrFormScreen(),
  //   JetsScreen(),
  //   SuperCarScreen(),
  // ];

  final _mainCategoryController = Get.put(MainCategoryController());
  final _specificCategoryController = Get.put(SpecificCategoryController());
  final _contactWhatsappController = Get.put(ContactWhatsappController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        // child: SingleChildScrollView(
        //   child: Padding(
        //     padding: const EdgeInsets.all(16),
        //     child: Column(
        //       crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [
        //         CustomAppBar(title: "Explore" , showBack: false,),
        //         Text(
        //           'LifeStyles',
        //           style: AppTextStyle.bold24,
        //         ),
        //         const SizedBox(height: 8),
        //         InkWell(
        //           onTap: (){
        //             Get.to(BeachClubScreen());
        //           },
        //           child: CustomGridItem(targetScreens: lifeStyle)),
        //         const SizedBox(height: 10,),
        //         Text(
        //           'Travel',
        //           style: AppTextStyle.bold24,
        //         ),
        //         const SizedBox(height: 8),
        //         CustomGridItem(targetScreens: travel),
        //         const SizedBox(height: 10,),
        //         Text(
        //           'Entertainment',
        //           style: AppTextStyle.bold24,
        //         ),
        //         const SizedBox(height: 8),
        //         CustomGridItem(targetScreens: travel),
        //         const SizedBox(height: 10,),
        //         Text(
        //           'Professional',
        //           style: AppTextStyle.bold24,
        //         ),
        //         const SizedBox(height: 8),
        //         CustomGridItem(targetScreens: travel),
        //         const SizedBox(height: 10,),
        //         Text(
        //           'Trips & expedition',
        //           style: AppTextStyle.bold24,
        //         ),
        //         const SizedBox(height: 8),
        //         CustomGridItem(targetScreens: travel),
        //       ],
        //     ),
        //   ),
        // ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CustomAppBar(title: "Explore" , showBack: false,),
            ),
           SliverList.builder(
             itemCount: _mainCategoryController.mainCategories.length,
             itemBuilder: (context, index) {
             MainCategory mainCategory = _mainCategoryController.mainCategories[index];  
             return Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text(mainCategory.name, style: AppTextStyle.bold24),
                   ),
                   SizedBox(height: 10,),
                   if(mainCategory.subCategories.isEmpty)
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Center(child: Text('No subcategories found')),
                     ),
                   if(mainCategory.subCategories.isNotEmpty)
                     GridView.builder(
                     itemCount: mainCategory.subCategories.length,
                     shrinkWrap: true,
                     physics: NeverScrollableScrollPhysics(),
                     gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                         crossAxisCount: 2,
                       mainAxisExtent: 210
                     ),
                     itemBuilder: (context, index) {
                       SubCategory subCategory = mainCategory.subCategories[index];
                       return Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           SizedBox(
                             height: 160,
                             width: 220,
                             child: GestureDetector(
                               onTap: (){
                                 if(subCategory.hasSpecificCategory){
                                   _specificCategoryController.fetchSubcategoryDetails(subCategory.id);
                                 }else if(subCategory.contractWhatsapp){
                                   _contactWhatsappController.fetchServiceDetails(subCategory.id);
                                 }else if(subCategory.hasForm){
                                   // go to form page
                                 }
                               },
                               child: ClipRect(
                                 child: Image.network(subCategory.img),
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                             child: Text(subCategory.name, style: AppTextStyle.bold16),
                           ),
                         ],
                       );
                     },
                   )
                 ],
               ),
             );
           },)
          ],
        ),
      ),
    );
  }
}
