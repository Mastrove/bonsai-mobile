import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:accpatapp/models/comment_reply_data.dart';
import 'package:provider/provider.dart';

class CommentCard extends StatelessWidget {
  final String avatarText;
  final String userName;
  final String commentTime;
  final String commentBody;

  CommentCard({
    this.userName,
    this.commentTime,
    this.commentBody,
    this.avatarText,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<CommentReplyData>(
        builder: (context, commentReplyData, child) {
      return Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 0.5,
              color: Color(0xFFE5E5E5),
            ),
          ),
        ),
        padding: EdgeInsets.only(top: 16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Color(0xFFFF740F),
              child: Text(
                avatarText.toUpperCase(),
                style: GoogleFonts.roboto(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    color: Colors.white),
              ),
              radius: 28.0,
            ),
            SizedBox(
              width: 20.0,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        userName,
                        style: GoogleFonts.roboto(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(
                        width: 7.0,
                      ),
                      Text(
                        commentTime,
                        style: GoogleFonts.roboto(
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w300,
                          fontSize: 12.0,
                          color: Color(0xFF6C5E5E),
                        ),
                        softWrap: true,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                      commentBody,
                      style: GoogleFonts.roboto(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w300,
                        fontSize: 14.0,
                        color: Color(0xFF6C5E5E),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final commentReply =
                                commentReplyData.commentReplies[index];
                            return CircleAvatar(
                              backgroundColor: commentReply.avatarColor,
                              child: Text(
                                commentReply.avatarText.toUpperCase(),
                                style: GoogleFonts.roboto(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.normal,
                                  color: Colors.white,
                                ),
                              ),
                              radius: 15.0,
                            );
                          },
                          itemCount: commentReplyData.commentReplyCount,
                        ),
                      ),
                      SizedBox(width: 7.0,),
                      Text(
                        '${commentReplyData.commentReplyCount.toString()} replies',
                        style: GoogleFonts.roboto(
                          fontStyle: FontStyle.normal,
                          fontSize: 12.0,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF0038FF),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
