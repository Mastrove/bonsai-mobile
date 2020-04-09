import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'watching.dart';

class WatchingData extends ChangeNotifier {
  List<Watching> watchings = [
    Watching(
      avatarColor: Color(0xFFFF740F),
      watchingDetails: 'Drink 1.5L of water everyday.',
      watchingDuration: '147 days to go',
      watchingName: 'Richard Koln',
    ),
    Watching(
      avatarColor: Color(0xFF0FD4FF),
      watchingDetails: 'Drink 2L of water everyday.',
      watchingDuration: '250 days to go',
      watchingName: 'Nick Paton',
    ),
    Watching(
      avatarColor: Color(0xFFFFE70F),
      watchingDetails: 'Drink 2.5L of water everyday.',
      watchingDuration: '50 days to go',
      watchingName: 'Victoria Lane',
    ),
  ];

  int get watchingCount => watchings.length;
}
