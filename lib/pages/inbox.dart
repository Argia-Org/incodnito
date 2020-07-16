import 'package:flutter/material.dart';

class Inbox extends StatefulWidget {
  static const String id = 'Inbox';
  Inbox({Key key}) : super(key: key);

  @override
  _InboxState createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
    );
  }
}
