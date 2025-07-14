import 'package:flutter/material.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_color.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_style.dart';
import 'package:get/get.dart';

import '../../utils/assets_path.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showTitle;
  final bool showBack;
  final ImageProvider<Object>? backGroundImage;
  final Function()? onPressed;

  const HomeAppBar({
    super.key,
    this.showTitle = false,
    this.backGroundImage,
    this.showBack = false, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: AppColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: showTitle
            ? [
                // Left: Greeting with Subtitle
                Row(
                  children: [
                    if (showBack)
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: SizedBox(
                          child: CircleAvatar(
                            backgroundColor: Color(0x0A000000),
                            child: GestureDetector(
                              onTap: () {
                                Get.back(); 
                              },
                              child: Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.greyBackgroundColor,
                                ),
                                child: const Icon(
                                  Icons.keyboard_arrow_left_outlined,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, Mirabel",
                          style: TextStyle(
                            fontSize: AppStyles.fontXL,
                            fontWeight: AppStyles.weightMedium,
                            fontFamily: "Inter",
                            color: AppColors.blackColor,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          "Find the amazing event near you",
                          style: TextStyle(
                            fontSize: AppStyles.fontM,
                            fontWeight: AppStyles.weightRegular,
                            fontFamily: "Inter",
                            color: AppColors.blackColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // Right: Notification Icon
          IconButton(icon: Icon(Icons.notification_add), onPressed: onPressed,),
              ]
            : [
                // Left: Avatar + Greeting
                Row(
                  children: [
                    CircleAvatar(
                      radius: 22,
                      backgroundImage:
                          backGroundImage ??
                          const AssetImage(AssetPath.navProfile),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Hi, Mirabel",
                      style: TextStyle(
                        fontSize: AppStyles.fontL,
                        fontWeight: AppStyles.weightRegular,
                        fontFamily: "Inter",
                        color: AppColors.blackColor,
                      ),
                    ),
                  ],
                ),

                // Middle: Location Chip
                Container(
                  height: 39,
                  width: 91,
                  decoration: BoxDecoration(
                    color: AppColors.greyColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 16,
                        color: AppColors.lightWhite6,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Dubai',
                        style: TextStyle(
                          fontSize: AppStyles.fontS,
                          fontWeight: AppStyles.weightRegular,
                          fontFamily: "Inter",
                          color: AppColors.lightWhite6,
                        ),
                      ),
                    ],
                  ),
                ),
                // Right: Notification Icon
          IconButton(icon: Icon(Icons.notification_add), onPressed: onPressed,),
              ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 10);
}
