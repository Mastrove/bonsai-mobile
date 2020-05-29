import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationButton extends StatelessWidget {
  final String buttonText;
  final Function onButtonPress;

  NotificationButton({this.buttonText, this.onButtonPress});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onButtonPress,
      child: Text(
        buttonText,
        style: GoogleFonts.roboto(
          fontSize: 14.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w300,
        ),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 4.0,
        horizontal: 14.0,
      ),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Color(0xFF0F7EFF),
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
      textColor: Color(0xFF000000),
    );
  }
}
