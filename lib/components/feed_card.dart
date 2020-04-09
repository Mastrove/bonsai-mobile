import 'package:accpatapp/components/notification_row_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedCard extends StatelessWidget {
  final String feedDate;
  final String feedDetails;

  FeedCard({this.feedDetails, this.feedDate});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            width: 0.5,
            color: Color(0xFFE5E5E5),
          ),
        ),
      ),
      padding: EdgeInsets.only(
        top: 10.0,
        bottom: 20.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFF0F7EFF),
              ),
              borderRadius: BorderRadius.circular(28.0),
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 28.0,
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  feedDate,
                  style: GoogleFonts.roboto(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w300,
                    fontSize: 12.0,
                    color: Color(0xFF6C5E5E),
                  ),
                  softWrap: true,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Text(
                    feedDetails,
                    style: GoogleFonts.roboto(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      fontSize: 14.0,
                      color: Color(0xFF6C5E5E),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 12.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      NotificationRowIcons(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
