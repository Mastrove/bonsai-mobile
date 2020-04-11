import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateSprintButton extends StatelessWidget {
  final String buttonText;
  final Function onButtonPress;

  CreateSprintButton({this.onButtonPress, this.buttonText});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onButtonPress,
      child: Text(
        buttonText,
        style: GoogleFonts.roboto(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
        ),
      ),
      textColor: Colors.white,
      color: Color(0xFF0F7EFF),
      padding: EdgeInsets.symmetric(
        vertical: 11.0,
        horizontal: 145.0,
      ),
    );
  }
}
