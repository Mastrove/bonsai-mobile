import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SprintCard extends StatelessWidget {
  final String sprintTitle;
  final String sprintTimeRemaining;
  final String sprintCompletionLevel;
  final String sprintWatchers;

  SprintCard(
      {this.sprintTitle,
      this.sprintTimeRemaining,
      this.sprintCompletionLevel,
      this.sprintWatchers});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          sprintTitle,
          style: GoogleFonts.roboto(
            fontStyle: FontStyle.normal,
            fontSize: 18.0,
            fontWeight: FontWeight.normal,
            color: Color(0xFF000000),
          ),
        ),
        Row(
          children: <Widget>[
            Text(
              sprintCompletionLevel,
              style: GoogleFonts.roboto(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                color: Color(0xFF6C5E5E),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 14.0,),
              child: Text(
                '.',
                style: TextStyle(
                  color: Color(0xFF0F7EFF),
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 9.0,
            ),
            Text(
              sprintTimeRemaining,
              style: GoogleFonts.roboto(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                fontStyle: FontStyle.normal,
                color: Color(0xFF6C5E5E),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.chat_bubble_outline,
              color: Color(0xFF000000),
              size: 40.0,
            ),
            SizedBox(
              width: 46.0,
            ),
            FlatButton(
              onPressed: () {},
              child: Text(
                'Check in',
                style: GoogleFonts.roboto(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    ),
              ),
              color: Color(0xFF0F7EFF),
              padding: EdgeInsets.all(
                8.0,
              ),
              textColor: Colors.white,
            ),
            SizedBox(
              width: 37.0,
            ),
            Container(
              width: 100.0,
              height: 25.0,
            decoration: BoxDecoration(border: Border.all(width: 0.3,),),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.remove_red_eye,
                    color: Color(0xFF000000),
                  ),
                  Text(
                    'watchers',
                    style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w300,
                      fontSize: 12.0,
                      fontStyle: FontStyle.normal,
                      color: Color(0xFF000000),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(6.0),
                    width: 25.0,
                    decoration: BoxDecoration(border: Border.all(width: 0.5,),),
                    child: Text(
                      sprintWatchers,
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.normal,
                        fontSize: 12.0,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF000000),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
