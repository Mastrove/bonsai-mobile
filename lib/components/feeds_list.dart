import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:accpatapp/models/feed_data.dart';
import 'feed_card.dart';

class FeedsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<FeedData>(builder: (context, feedData, child) {
      return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final feed = feedData.feeds[index];
          return FeedCard(
            feedDate: feed.feedDate,
            feedDetails: feed.feedDetails,
          );
        },
        itemCount: feedData.feedCount,
      );
    });
  }
}
