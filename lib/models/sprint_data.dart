import 'package:flutter/foundation.dart';
import 'sprint.dart';

class SprintData extends ChangeNotifier {
  List<Sprint> sprints = [
    Sprint(
      sprintTitle: 'Drink at least 1.5L of water everyday',
      sprintCompletionLevel: '3/150 days',
      sprintTimeRemaining: '147 days to go',
      sprintWatchers: '2',
    ),
  ];

  int get sprintCount => sprints.length;
}