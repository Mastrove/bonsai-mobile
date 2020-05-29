import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarTitle extends StatelessWidget {
  final String titleText;

  AppBarTitle({this.titleText});

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: GoogleFonts.roboto(
          fontStyle: FontStyle.normal,
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
          color: Colors.white),
    );
  }
}
