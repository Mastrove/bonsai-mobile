import 'package:flutter/foundation.dart';
import 'comment.dart';

class CommentData extends ChangeNotifier {
  List<Comment> comments = [
    Comment(avatarText: 'r', commentBody: 'I drank 1.5L of water today at a single go. Lmao, I\’m so full right now', commentTime: '11:47 PM', userName: 'Richard Koln'),
  ];

  int get commentCount => comments.length;

}
