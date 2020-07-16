import 'package:flutter/material.dart';
import 'package:incodnito/ui/pages/explore.dart';
import 'package:incodnito/ui/pages/feed.dart';
import 'package:incodnito/ui/pages/inbox.dart';
import 'package:incodnito/ui/pages/landing.dart';
import 'package:incodnito/ui/pages/notifications.dart';
import 'package:incodnito/ui/pages/profile.dart';
import 'package:incodnito/utils/uidata.dart';

class Incodnito extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kappName,
      theme: appTheme,
      initialRoute: Landing.id,
      routes: {
        Landing.id: (context) => Landing(),
        Feed.id: (context) => Feed(),
        Explore.id: (context) => Explore(),
        Profile.id: (context) => Profile(),
        Inbox.id: (context) => Inbox(),
        Notifications.id: (context) => Notifications(),
      },
    );
  }
}
