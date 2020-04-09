import 'package:accpatapp/components/watching_list.dart';
import 'package:flutter/material.dart';
import 'package:accpatapp/components/app_bar_title.dart';

class WatchingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(
            top: 8.0,
            left: 12.0,
            bottom: 8.0,
          ),
          child: CircleAvatar(
            backgroundColor: Color(0xFFFF740F),
            radius: 22.0,
          ),
        ),
        title: AppBarTitle(
          titleText: 'Watching',
        ),
        backgroundColor: Color(0xFF1480ff),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 24.0,
            left: 12.0,
          ),
          child: WatchingList(),
        ),
      ),
    );
  }
}
