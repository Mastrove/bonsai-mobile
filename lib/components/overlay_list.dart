import 'package:flutter/material.dart';
import 'overlay_text.dart';

class OverlayList extends StatefulWidget {
  @override
  _OverlayListState createState() => _OverlayListState();
}

class _OverlayListState extends State<OverlayList> {
  List<ListTile> selectionList = [
    ListTile(
      leading: Icon(
        Icons.chevron_right,
        color: Color(0xFF0F7EFF),
      ),
      title: OverlayText(
        selectionText: 'Daily',
      ),
    ),
    ListTile(
      leading: Icon(
        Icons.chevron_right,
        color: Colors.transparent,
      ),
      title: OverlayText(
        selectionText: 'Mon - Fri',
      ),
    ),
    ListTile(
      leading: Icon(
        Icons.chevron_right,
        color: Colors.transparent,
      ),
      title: OverlayText(
        selectionText: 'Once every week',
      ),
    ),
    ListTile(
      leading: Icon(
        Icons.chevron_right,
        color: Colors.transparent,
      ),
      title: OverlayText(
        selectionText: 'Custom',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return selectionList[index];
      },
      itemCount: selectionList.length,
    );
  }
}
