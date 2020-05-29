import 'package:flutter/material.dart';
import 'package:accpatapp/components/overlay_list.dart';

class SelectFrequencyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 41.0,
        left: 17.0,
        right: 35.0,
        bottom: 23.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40.0),
          topLeft: Radius.circular(40.0),
        ),
      ),
      child: OverlayList(),
    );
  }
}
