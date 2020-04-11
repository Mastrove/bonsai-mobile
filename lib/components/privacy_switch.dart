import 'package:flutter/material.dart';

class PrivacySwitch extends StatefulWidget {
  @override
  _PrivacySwitchState createState() => _PrivacySwitchState();
}

class _PrivacySwitchState extends State<PrivacySwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isSwitched,
      onChanged: (value) {
        setState(() {
          isSwitched = value;
        });
      },
      activeColor: Colors.white,
      activeTrackColor: Color(0xFF0F7EFF),
    );
  }
}
