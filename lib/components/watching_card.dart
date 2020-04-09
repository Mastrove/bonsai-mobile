import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WatchingCard extends StatelessWidget {
  final String watchingName;
  final String watchingDetails;
  final String watchingDuration;
  final Color avatarColor;

  WatchingCard(
      {this.avatarColor,
      this.watchingName,
      this.watchingDuration,
      this.watchingDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Color(0xFFC4C4C4),
          ),
        ),
      ),
      padding: EdgeInsets.only(
        top: 30.0,
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
              backgroundColor: avatarColor,
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
                  watchingName,
                  style: GoogleFonts.roboto(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0,
                    color: Color(0xFF000000),
                  ),
                  softWrap: true,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Flexible(
                  fit: FlexFit.loose,
                  child: Text(
                    watchingDetails,
                    style: GoogleFonts.roboto(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      fontSize: 14.0,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  watchingDuration,
                  style: GoogleFonts.roboto(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w300,
                    fontSize: 12.0,
                    color: Color(0xFF6C5E5E),
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
