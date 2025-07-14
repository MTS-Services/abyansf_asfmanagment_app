import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomGridItem extends StatelessWidget {
  final List<Map<String, dynamic>> gridItems;

  const CustomGridItem({super.key, required this.gridItems});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: gridItems.length,
      // Add your desired item count
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 14.0,
        childAspectRatio: 0.72,
      ),
      itemBuilder: (context, index) {
        final item = gridItems[index];
        return GestureDetector(
          onTap: () {
            Get.to(item['screen']);
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 169,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(item['image'], fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  item['title'],
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
