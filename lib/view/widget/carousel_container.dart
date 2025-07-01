import 'package:flutter/material.dart';

class CarouselContainer extends StatelessWidget {
  final String imagePath;
  final String? title;
  final String? location;
  final String? personIcon;
  final String? clockIcon;
  final double? height;
  final double? width;

  const CarouselContainer({
    super.key,
    required this.imagePath,
    this.title,
    this.location,
    this.personIcon,
    this.clockIcon,
    this.height = 216,
    this.width = 296,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Text(
              title ?? '',
              style: const TextStyle(
                fontFamily: "Playfair Display",
                fontSize: 20, // replace with AppStyles.fontXL if needed
                fontWeight: FontWeight.bold, // AppStyles.weightBold
                color: Colors.white, // AppColors.lightWhite6
              ),
            ),
            const SizedBox(height: 6),
            Row(
              children: [
               location!=null ? const Icon(
                  Icons.location_on,
                  size: 16,
                  color: Colors.white, // AppColors.lightWhite6
                ): SizedBox(),
                Text(
                  location?? '',
                  style: const TextStyle(
                    fontFamily: "Inter",
                    fontSize: 12, // AppStyles.fontS
                    fontWeight: FontWeight.bold, // AppStyles.weightBold
                    color: Colors.white70, // AppColors.lightWhite9
                  ),
                ),
                const Spacer(),
               personIcon != null? _iconContainer(personIcon?? ''):SizedBox(),
                const SizedBox(width: 5),
               clockIcon != null? _iconContainer(clockIcon?? ''): SizedBox(),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget _iconContainer(String asset) {
    return Container(
      height: 28,
      width: 35.58,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white), // AppColors.primaryColor
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: Image.asset(asset, scale: 4)),
    );
  }
}
