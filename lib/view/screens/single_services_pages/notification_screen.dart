
import 'package:abyansf_asfmanagment_app/view/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/notification_controller/notification_controller.dart';
import '../../widget/notification_widget.dart';

class NotificationScreen extends StatelessWidget {
   NotificationScreen({super.key});

   final NotificationController _notificationController = Get.put(NotificationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CustomAppBar(title: "Event Details"),
              ),
              Obx((){
                return SliverList.builder(
                  itemCount: _notificationController.notifications.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(7),
                      child: NotificationCardWidget(
                        title: _notificationController.notifications[index].title,
                        description: _notificationController.notifications[index].message,
                        time: _notificationController.notifications[index].createdAt.toString(),
                      ),
                    );
                  },
                );
              })
            ],
          )
      ),
    );
  }
}
