import 'package:abyansf_asfmanagment_app/data/state_holder/specific_controller.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view/screens/main_screen/massage.dart';
import 'package:abyansf_asfmanagment_app/view/screens/single_services_pages/lifestyle/beach_club_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../data/model/all_category/all_categories_model.dart';
import '../../utils/assets_path.dart';

class CustomGridItem extends StatelessWidget {
  final List<SubCategories> subCategories;

   CustomGridItem({super.key, required this.subCategories});
  final specificController= Get.put(SpecificController());

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: subCategories.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 14.0,
        childAspectRatio: 0.79,
      ),
      itemBuilder: (context, subIndex) {
        final subItem = subCategories[subIndex];
        return GestureDetector(
          onTap: () {
            if (subItem.contractWhatsapp == true) {
               Get.to(() => Massage());
            } else if (subItem.hasForm == true) {
              //
            } else {
           specificController.getSpecificCategories();
              Get.to(
                () => BeachClubScreen(id: subItem.id ?? -1,
                ),
              );
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 169,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: subItem.img != null && subItem.img!.startsWith('http')
                      ? Image.network(
                          subItem.img!,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Image.asset(
                              AssetPath.diningImage,
                              fit: BoxFit.cover,
                            );
                          },
                        )
                      : Image.asset(AssetPath.diningImage, fit: BoxFit.cover),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  subItem.name ?? 'No name found',
                  style: AppTextStyle.bold16,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
