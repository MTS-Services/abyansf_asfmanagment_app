import 'package:abyansf_asfmanagment_app/utils/style/app_color.dart';
import 'package:abyansf_asfmanagment_app/utils/style/app_text_styles.dart';
import 'package:abyansf_asfmanagment_app/view/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../view_models/controller/notification_controller.dart';

class NotificationScreen extends GetView<NotificationController> {
  NotificationScreen({super.key});

  final List<Map<String, String>> notificationsList = [
    {
      'title': 'Reminder for your Night life',
      'subtitle': 'Learn more about managing account info and activity',
      'time': '9min ago',
    },
    {
      'title': 'Reminder for your Dinner',
      'subtitle': 'Learn more about managing account info and activity',
      'time': '19min ago',
    },
    {
      'title': 'Reminder for your Camel Camp',
      'subtitle': 'Learn more about managing account info and activity',
      'time': '9min ago',
    },
    {
      'title': 'Breakfast',
      'subtitle': 'Learn more about managing account info and activity',
      'time': '08.07.2025',
    },
    {
      'title': 'Reminder for your Yacht',
      'subtitle': 'Looking forward to it',
      'time': '07.07.2025',
    },
    {
      'title': 'Luxury Diner Venues',
      'subtitle': 'Learn more about managing account info and activity',
      'time': '05.07.2025',
    },
    {
      'title': 'Reminder for your Camel Camp',
      'subtitle': 'Learn more about managing account info and activity',
      'time': '9min ago',
    },
    {
      'title': 'Breakfast',
      'subtitle': 'Learn more about managing account info and activity',
      'time': '08.07.2025',
    },
    {
      'title': 'Reminder for your Yacht',
      'subtitle': 'Looking forward to it',
      'time': '07.07.2025',
    },
    {
      'title': 'Luxury Diner Venues',
      'subtitle': 'Learn more about managing account info and activity',
      'time': '05.07.2025',
    },
    {
      'title': 'Reminder for your Camel Camp',
      'subtitle': 'Learn more about managing account info and activity',
      'time': '9min ago',
    },
    {
      'title': 'Breakfast',
      'subtitle': 'Learn more about managing account info and activity',
      'time': '08.07.2025',
    },
    {
      'title': 'Reminder for your Yacht',
      'subtitle': 'Looking forward to it',
      'time': '07.07.2025',
    },
    {
      'title': 'Luxury Diner Venues',
      'subtitle': 'Learn more about managing account info and activity',
      'time': '05.07.2025',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  CustomAppBar(title: 'Notification'),
                  SizedBox(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: notificationsList.length,
                      itemBuilder: (context, index) {
                        final notification = notificationsList[index];
                        return Card(
                          elevation: 20,
                          color: AppColors.white,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: ListTile(
                              title: Text(
                                notification['title'] ?? '',
                                style: AppTextStyle.bold16,
                                overflow: TextOverflow.ellipsis,
                              ),
                              subtitle: Text(
                                notification['subtitle'] ?? '',
                                style: AppTextStyle.regular12.copyWith(
                                  color: AppColors.textColor,
                                ),
                              ),
                              trailing: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    notification['time'] ?? '',
                                    style: AppTextStyle.interRegular10,
                                  ),
                                  Container(
                                    width: 12,
                                    height: 12,
                                    margin: const EdgeInsets.only(top: 4),
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryDeepColor,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                  SizedBox(),
                                ],
                              ),
                              leading: CircleAvatar(
                                backgroundColor: AppColors.secondaryColor,
                                child: Icon(
                                  Icons.notifications_outlined,
                                  color: AppColors.primaryDeepColor,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
