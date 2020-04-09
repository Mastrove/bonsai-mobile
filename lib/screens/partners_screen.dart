import 'package:accpatapp/components/partners_list.dart';
import 'package:flutter/material.dart';
import 'package:accpatapp/components/app_bar_title.dart';

class PartnersScreen extends StatelessWidget {
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
          titleText: 'Partners',
        ),
        backgroundColor: Color(0xFF1480ff),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 20.0,
            left: 12.0,
          ),
          child: PartnersList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.person_add,
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF0F7EFF),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
