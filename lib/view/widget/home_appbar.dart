import 'package:flutter/material.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appStyle.dart';

import '../../utils/assets_path.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showTitle;
  final ImageProvider<Object>? backGroundImage;

  const HomeAppBar({super.key, this.showTitle = false, this.backGroundImage});

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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Mirable",
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
                // Right: Notification Icon
                const Icon(Icons.notification_add),
              ]
            : [
                // Left: Avatar + Greeting
                Row(
                  children: [

                    CircleAvatar(radius: 22,
                      backgroundImage: backGroundImage ?? const AssetImage(AssetPath.navProfile),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Hi, Mirable",
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
                const Icon(Icons.notification_add),
              ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 10);
}
