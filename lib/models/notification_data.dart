import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:accpatapp/models/notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:accpatapp/components/notification_row_icons.dart';
import 'package:accpatapp/components/notification_button.dart';

class NotificationData extends ChangeNotifier {
  List<NotificationItem> notifications = [
    NotificationItem(
      notificationDate: '24/02/2020',
      notificationDetails: 'Richard Koln checked-in  on time',
      notificationActions: NotificationRowIcons(),
    ),
    NotificationItem(
      notificationDate: '24/02/2020',
      notificationDetails: 'Quincy Adams invited you to watch the sprint',
      notificationActions: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NotificationButton(
            buttonText: 'Accept',
            onButtonPress: () {},
          ),
          SizedBox(width: 27.0,),
          NotificationButton(
            buttonText: 'Decline',
            onButtonPress: () {},
          ),
        ],
      ),
    ),
    NotificationItem(
      notificationDate: '24/02/2020',
      notificationDetails: 'Richard Koln checked-in  on time',
      notificationActions: NotificationRowIcons(),
    ),
    NotificationItem(
      notificationDate: '24/02/2020',
      notificationDetails: 'Richard Koln checked-in  on time',
      notificationActions: NotificationRowIcons(),
    ),
    NotificationItem(
      notificationDate: '24/02/2020',
      notificationDetails:
          'I drank 1.5L of water at a single go. Lmao, I\'m so full right now',
      notificationActions: NotificationRowIcons(),
    ),
  ];

  int get notificationCount => notifications.length;
}


