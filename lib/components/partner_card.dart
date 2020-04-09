import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PartnerCard extends StatelessWidget {
  final String partnerName;
  PartnerCard({this.partnerName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 34.0,
        top: 10.0,
        bottom: 20.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xFF0F7EFF),
              ),
              borderRadius: BorderRadius.circular(28.0),
            ),
            child: CircleAvatar(
              backgroundColor: Color(0xFF008605),
              radius: 28.0,
            ),
          ),
          SizedBox(
            width: 28.0,
          ),
          Expanded(
            child: Text(
              partnerName,
              style: GoogleFonts.roboto(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
                color: Color(0xFF000000),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
