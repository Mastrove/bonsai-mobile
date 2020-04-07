import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FixedBottomBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      elevation: 0.5,
      iconSize: 30.0,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.home,
            color: Color(0xFF000000),
          ),
          title: Text(
            'Home',
            style: GoogleFonts.roboto(
              fontSize: 10.0,
              fontWeight: FontWeight.w200,
              fontStyle: FontStyle.normal,
              color: Color(0xFF000000),
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.bell,
            color: Color(0xFF000000),
          ),
          title: Text(
            'Notifications',
            style: GoogleFonts.roboto(
              fontSize: 10.0,
              fontWeight: FontWeight.w200,
              fontStyle: FontStyle.normal,
              color: Color(0xFF000000),
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.eye,
            color: Color(0xFF000000),
          ),
          title: Text(
            'Watching',
            style: GoogleFonts.roboto(
              fontSize: 10.0,
              fontWeight: FontWeight.w200,
              fontStyle: FontStyle.normal,
              color: Color(0xFF000000),
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.users,
            color: Color(0xFF000000),
          ),
          title: Text(
            'Partners',
            style: GoogleFonts.roboto(
              fontSize: 10.0,
              fontWeight: FontWeight.w200,
              fontStyle: FontStyle.normal,
              color: Color(0xFF000000),
            ),
          ),
        ),
      ],
    );
  }
}