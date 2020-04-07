import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'comment_card.dart';
import 'package:accpatapp/models/comment_data.dart';

class CommentsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CommentData>(builder: (context, commentData, child) {
      return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final comment = commentData.comments[index];
          return CommentCard(
            userName: comment.userName,
            commentBody: comment.commentBody,
            avatarText: comment.avatarText,
            commentTime: comment.commentTime,
          );
        },
        itemCount: commentData.commentCount,
      );
    });
  }
}
