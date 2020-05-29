import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:accpatapp/screens/home_screen.dart';
import 'package:accpatapp/screens/notifications_screen.dart';

class AppScaffold extends StatefulWidget {
  @override
  _AppScaffoldState createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  int _currentIndex = 0;
  List _pageList;
  var _currentPage;

  @override
  void initState() {
    super.initState();
    _pageList = [
      HomeScreen(),
      NotificationsScreen(),
    ];
    _currentPage = _pageList[_currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: Center(
        child: _currentPage,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 0.5,
        iconSize: 30.0,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
            _currentPage = _pageList[_currentIndex];
          });
        },
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
      ),
    );
  }
}
