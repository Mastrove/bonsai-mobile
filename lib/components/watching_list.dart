import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'watching_card.dart';
import 'package:accpatapp/models/watching_data.dart';

class WatchingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<WatchingData>(builder: (context, watchingData, child) {
      return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final watching = watchingData.watchings[index];
          return WatchingCard(
            watchingDetails: watching.watchingDetails,
            watchingDuration: watching.watchingDuration,
            watchingName: watching.watchingName,
            avatarColor: watching.avatarColor,
          );
        },
        itemCount: watchingData.watchingCount,
      );
    });
  }
}
