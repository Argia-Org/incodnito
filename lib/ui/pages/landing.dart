import 'package:flutter/material.dart';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:incodnito/ui/pages/explore.dart';
import 'package:incodnito/ui/pages/feed.dart';
import 'package:incodnito/ui/pages/inbox.dart';
import 'package:incodnito/ui/pages/notifications.dart';
import 'package:incodnito/ui/pages/profile.dart';
import 'package:incodnito/ui/widgets/appBar.dart';
import 'package:incodnito/utils/uidata.dart';

class Landing extends StatefulWidget {
  static const String id = 'Landing';
  Landing({Key key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _selectedIndex = 0;

  List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_selectedIndex].currentState.maybePop();

        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        appBar: appBar(context),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _selectedIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
          }),
          backgroundColor: Colors.white,
          items: [
            buildBottomNavyBarItem(
              Icon(Icons.home),
              'Feed',
            ),
            buildBottomNavyBarItem(
              Icon(Icons.search),
              'Explore',
            ),
            buildBottomNavyBarItem(
              Icon(Icons.person),
              'Profile',
            ),
            buildBottomNavyBarItem(
              Icon(Icons.chat),
              'Inbox',
            ),
            buildBottomNavyBarItem(
              Icon(Icons.notifications),
              'Notification',
            ),
          ],
        ),
        body: SafeArea(
          // minimum: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              _buildOffstageNavigator(0),
              _buildOffstageNavigator(1),
              _buildOffstageNavigator(2),
              _buildOffstageNavigator(3),
              _buildOffstageNavigator(4),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavyBarItem buildBottomNavyBarItem(Icon iconData, String label) {
    return BottomNavyBarItem(
      icon: iconData,
      title: Text(
        label,
        style: TextStyle(color: kbottomTextColor),
      ),
      activeColor: kbottomIconActiveColor,
      inactiveColor: kbottomIconInactiveColor,
      textAlign: TextAlign.center,
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
    return {
      '/': (context) {
        return [
          Feed(),
          Explore(),
          Profile(),
          Inbox(),
          Notifications(),
        ].elementAt(index);
      },
    };
  }

  Widget _buildOffstageNavigator(int index) {
    var routeBuilders = _routeBuilders(context, index);

    return Offstage(
      offstage: _selectedIndex != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => routeBuilders[routeSettings.name](context),
          );
        },
      ),
    );
  }
}
