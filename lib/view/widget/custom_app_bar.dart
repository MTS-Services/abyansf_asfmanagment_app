import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/style/app_color.dart';
import '../../utils/style/app_text_styles.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBackTap;
  final Widget? action;
  final bool showBack;

  const CustomAppBar({
    super.key,
    this.title = '',
    this.onBackTap,
    this.action,
    this.showBack = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, left: 0, right: 0, bottom: 8),
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          showBack
              ? GestureDetector(
                  onTap: onBackTap ?? () => Get.back(),
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.greyBackgroundColor,
                    ),
                    child: const Icon(Icons.keyboard_arrow_left_outlined),
                  ),
                )
              : const SizedBox(width: 40),
          Text(title, style: AppTextStyle.bold24),
          action ?? const SizedBox(width: 40),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 16);
}
