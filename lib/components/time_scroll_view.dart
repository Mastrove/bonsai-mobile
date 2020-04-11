import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 180.0,
              maxWidth: 100.0,
            ),
            child: ListWheelScrollView.useDelegate(
              diameterRatio: 1.5,
              itemExtent: 24.0,
              magnification: 1.2,
              useMagnifier: true,
              childDelegate: ListWheelChildLoopingListDelegate(
                children: List<Widget>.generate(24, (index) {
                  var newIndex;
                  if (index + 1 < 10) {
                    newIndex = '0${index + 1}';
                  } else {
                    newIndex = index + 1;
                  }
                  if (index == 23) {
                    newIndex = '00';
                  }
                  return Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: Text(
                      '$newIndex',
                      style: GoogleFonts.roboto(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF6C5E5E),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 180.0,
              maxWidth: 150.0,
            ),
            child: ListWheelScrollView.useDelegate(
              diameterRatio: 1.5,
              itemExtent: 24.0,
              magnification: 1.2,
              useMagnifier: true,
              childDelegate: ListWheelChildLoopingListDelegate(
                children: List<Widget>.generate(60, (index) {
                  var newIndex;
                  if (index + 1 < 10) {
                    newIndex = '0${index + 1}';
                  } else {
                    newIndex = index + 1;
                  }
                  if (index == 59) {
                    newIndex = '00';
                  }
                  return Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: Text(
                      '$newIndex',
                      style: GoogleFonts.roboto(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w300,
                        fontStyle: FontStyle.normal,
                        color: Color(0xFF6C5E5E),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
