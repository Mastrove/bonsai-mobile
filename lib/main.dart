import 'package:accpatapp/components/app_scaffold.dart';
import 'package:accpatapp/models/comment_data.dart';
import 'package:accpatapp/models/comment_reply_data.dart';
import 'package:accpatapp/models/feed_data.dart';
import 'package:accpatapp/models/notification_data.dart';
import 'package:accpatapp/models/partner_data.dart';
import 'package:accpatapp/models/sprint_data.dart';
import 'package:accpatapp/models/watching_data.dart';
import 'package:accpatapp/screens/create_sprint_screen.dart';
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
        ChangeNotifierProvider(create: (context) => FeedData()),
        ChangeNotifierProvider(create: (context) => PartnerData()),
        ChangeNotifierProvider(create: (context) => WatchingData()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: Color(0xFFF0F0F0),
          )
        ),
        home: AppScaffold(),
        routes: {
          HomeScreen.id: (context) => HomeScreen(),
          CreateSprintScreen.id: (context) => CreateSprintScreen(),
        },
      ),
    );
  }
}
