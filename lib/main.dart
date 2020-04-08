import 'package:accpatapp/components/app_scaffold.dart';
import 'package:accpatapp/models/comment_data.dart';
import 'package:accpatapp/models/comment_reply_data.dart';
import 'package:accpatapp/models/notification_data.dart';
import 'package:accpatapp/models/sprint_data.dart';
import 'package:accpatapp/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SprintData()),
        ChangeNotifierProvider(create: (context) => CommentData()),
        ChangeNotifierProvider(create: (context) => CommentReplyData()),
        ChangeNotifierProvider(create: (context) => NotificationData()),
      ],
      child: MaterialApp(
        home: AppScaffold(),
        routes: {
          HomeScreen.id: (context) => HomeScreen(),
        },
      ),
    );
  }
}
