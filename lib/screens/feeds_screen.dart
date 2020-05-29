import 'package:accpatapp/components/feeds_list.dart';
import 'package:flutter/material.dart';
import 'package:accpatapp/components/app_bar_title.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(
            top: 8.0,
            left: 12.0,
            bottom: 8.0,
          ),
          child: CircleAvatar(
            backgroundColor: Color(0xFFFF740F),
            radius: 22.0,
          ),
        ),
        title: AppBarTitle(
          titleText: 'Feed',
        ),
        backgroundColor: Color(0xFF1480ff),
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.only(
              top: 18.0,
              left: 12.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Updates from all the sprints you watch',
                  style: GoogleFonts.roboto(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 22.0,),
                FeedsList(),
              ],
            )),
      ),
    );
  }
}
