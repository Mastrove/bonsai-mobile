import 'package:accpatapp/components/notification_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:accpatapp/models/notification_data.dart';

class NotificationsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NotificationData>(
        builder: (context, notificationsData, child) {
      return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final notification = notificationsData.notifications[index];
          return NotificationCard(
            notificationDate: notification.notificationDate,
            notificationDetails: notification.notificationDetails,
            notificationActions: notification.notificationActions,
          );
        },
        itemCount: notificationsData.notificationCount,
      );
    });
  }
}

