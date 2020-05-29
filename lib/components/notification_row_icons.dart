import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationRowIcons extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Icon(FontAwesomeIcons.rocket, color: Color(0xFF6C5E5E),),
        SizedBox(width: 64.0,),
        Icon(FontAwesomeIcons.comment, color: Color(0xFF6C5E5E),),
        SizedBox(width: 64.0,),
        Icon(FontAwesomeIcons.bell, color: Color(0xFF6C5E5E),),
      ],
    );
  }
}
