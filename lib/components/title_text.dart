import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  final String textContent;

  TitleText({this.textContent});

  @override
  Widget build(BuildContext context) {
    return Text(
      textContent,
      style: GoogleFonts.roboto(
        fontSize: 20.0,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        color: Color(0xFF000000),
      ),
    );
  }
}
