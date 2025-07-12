import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../utils/style/app_color.dart';
import '../../view_models/controller/date_controller.dart';

class CustomDatePicker extends StatelessWidget {
  final String? labelText;

  CustomDatePicker({super.key, this.labelText});

  // Create a local instance of DateController
  final DateController date = DateController();

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Expanded(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 20),
          child: GestureDetector(
            onTap: () => date.selectDate(context),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.lightLaserColor),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (labelText != null)
                          Text(
                            labelText!,
                            style: TextStyle(
                              color: AppColors.primaryDeepColor,
                              fontSize: 10,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        const SizedBox(height: 4),
                        Text(
                          DateFormat(
                            'd MMMM, y',
                          ).format(date.selectedDate.value),
                          style: const TextStyle(
                            color: Color(0xFF6D6D6D),
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
