import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'comment_reply.dart';

class CommentReplyData extends ChangeNotifier {
  List<CommentReply> commentReplies = [
    CommentReply(avatarText: 'g', avatarColor: Color(0xFF008605),),
    CommentReply(avatarText: 'f', avatarColor: Color(0xFF0F7EFF),),
  ];

  int get commentReplyCount => commentReplies.length;

}
