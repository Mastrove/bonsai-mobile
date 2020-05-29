import 'package:accpatapp/components/comments_list.dart';
import 'package:accpatapp/components/sprints_list.dart';
import 'package:accpatapp/components/app_bar_title.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:accpatapp/models/sprint_data.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatelessWidget {
  static String id = 'home_screen';

  final date = new DateFormat.yMMMMd("en_US");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
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
          titleText: 'Home',
        ),
        backgroundColor: Color(0xFF1480ff),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 24.0,
            left: 12.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Your Sprints - ${Provider.of<SprintData>(context).sprintCount}',
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0,
                    fontStyle: FontStyle.normal,
                    color: Color(0xFF000000)),
              ),
              SizedBox(
                height: 33.0,
              ),
              SprintsList(),
              SizedBox(
                height: 47.0,
              ),
              Text(
                date.format(
                  DateTime.now(),
                ),
                style: GoogleFonts.roboto(
                  fontSize: 10.0,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              ),
              SizedBox(
                height: 7.0,
              ),
              Container(
                child: CommentsList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

