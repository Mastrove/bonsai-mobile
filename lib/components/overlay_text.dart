import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OverlayText extends StatelessWidget {
  final String selectionText;

  OverlayText({this.selectionText});

  @override
  Widget build(BuildContext context) {
    return Text(
      selectionText,
      style: GoogleFonts.roboto(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.normal,
        fontSize: 16.0,
        color: Color(0xFF000000),
      ),
    );
  }
}
