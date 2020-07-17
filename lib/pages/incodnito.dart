import 'package:flutter/material.dart';
import 'package:incodnito/ui/pages/explore.dart';
import 'package:incodnito/ui/pages/feed.dart';
import 'package:incodnito/ui/pages/inbox.dart';
import 'package:incodnito/ui/pages/landing.dart';
import 'package:incodnito/ui/pages/login.dart';
import 'package:incodnito/ui/pages/notifications.dart';
import 'package:incodnito/ui/pages/profile.dart';
import 'package:incodnito/ui/pages/registration.dart';
import 'package:incodnito/utils/uidata.dart';

class Incodnito extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appTheme,
      initialRoute: Login.id,
      routes: {
        Landing.id: (context) => Landing(),
        Feed.id: (context) => Feed(),
        Explore.id: (context) => Explore(),
        Profile.id: (context) => Profile(),
        Inbox.id: (context) => Inbox(),
        Notifications.id: (context) => Notifications(),
        Login.id: (context) => Login(),
        Registration.id: (context) => Registration(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(),
    );
  }
}
