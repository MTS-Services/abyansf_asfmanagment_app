import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 44),
          // Top App Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Row(
              children: [
                const Icon(Icons.arrow_back_ios_new, size: 24),
                const SizedBox(width: 12),
                const Text(
                  'Notifications',
                  style: TextStyle(
                    color: Color(0xFF1A1A1A),
                    fontSize: 20,
                    fontFamily: 'Playfair Display',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          // Notifications List
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: [
                _notificationCard(
                  title: 'Reminder for your Night life',
                  subtitle: 'Learn more about managing account info and activity',
                  time: '9min ago',
                ),
                _notificationCard(
                  title: 'Reminder for your Dinner',
                  subtitle: 'Learn more about managing account info and activity',
                  time: '19min ago',
                ),
                _notificationCard(
                  title: 'Reminder for your Camel Camp',
                  subtitle: 'Learn more about managing account info and activity',
                  time: '9min ago',
                ),
                _notificationCard(
                  title: 'Reminder for your Yacht',
                  subtitle: 'Looking forward to it',
                  time: '9min ago',
                ),
                _notificationCard(
                  title: 'Luxury Diner Venues',
                  subtitle: 'Learn more about managing account info and activity',
                  time: '14min ago',
                ),
                _notificationCard(
                  title: 'Breakfast',
                  subtitle: 'Learn more about managing account info and activity',
                  time: '9min ago',
                ),
              ],
            ),
          ),

          // Bottom Bar Indicator
          Container(
            margin: const EdgeInsets.only(bottom: 12, top: 10),
            width: 134,
            height: 5,
            decoration: BoxDecoration(
              color: const Color(0xFF888888),
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ],
      ),
    );
  }

  Widget _notificationCard({
    required String title,
    required String subtitle,
    required String time,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: const Color(0x14000000),
            blurRadius: 30,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: const Color(0xFFF8F6EE),
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.notifications, color: Colors.black54),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Playfair Display',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Color(0xFF6D6D6D),
                    fontSize: 12,
                    fontFamily: 'Inter',
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  time,
                  style: const TextStyle(
                    color: Color(0xFF888888),
                    fontSize: 10,
                    fontFamily: 'Inter',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
