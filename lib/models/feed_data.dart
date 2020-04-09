import 'package:flutter/foundation.dart';
import 'feed.dart';

class FeedData extends ChangeNotifier {
  List<Feed> feeds = [
    Feed(
        feedDate: '24/02/2020',
        feedDetails: 'Richard Koln checked-in  on time'),
    Feed(
        feedDate: '24/02/2020',
        feedDetails: 'Richard Koln checked-in  on time'),
    Feed(
        feedDate: '24/02/2020',
        feedDetails: 'Richard Koln checked-in  on time'),
    Feed(
      feedDate: '24/02/2020',
      feedDetails:
          'I drank 1.5L of water at a single go. Lmao, I\'m so full right now',
    ),
  ];

  int get feedCount => feeds.length;
}
