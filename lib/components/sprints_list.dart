import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'sprint_card.dart';
import 'package:accpatapp/models/sprint_data.dart';

class SprintsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<SprintData>(
      builder: (context, sprintData, child) {
        return ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final sprint = sprintData.sprints[index];
            return SprintCard(
              sprintTitle: sprint.sprintTitle,
              sprintCompletionLevel: sprint.sprintCompletionLevel,
              sprintTimeRemaining: sprint.sprintTimeRemaining,
              sprintWatchers: sprint.sprintWatchers,
            );
          },
          itemCount: sprintData.sprintCount,
        );
      },
    );
  }
}
