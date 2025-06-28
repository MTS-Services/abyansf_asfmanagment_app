import 'package:flutter/material.dart';
import '../assets_path.dart';
import '../style/appColor.dart';
import '../style/app_text_styles.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final VoidCallback? onBackTap;
  final Widget? action; // edit icon or any custom widget
  final bool showBack;

  const CustomAppBar({
    super.key,
    required this.title,
    this.onBackTap,
    this.action,
    this.showBack = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          showBack
              ? GestureDetector(
            onTap: onBackTap ?? () => Navigator.pop(context),
            child: Container(
              height: 24,
              width: 24,
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
}
