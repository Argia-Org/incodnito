import 'package:flutter/material.dart';

import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:incodnito/pages/explore.dart';
import 'package:incodnito/pages/feed.dart';
import 'package:incodnito/pages/inbox.dart';
import 'package:incodnito/pages/notifications.dart';
import 'package:incodnito/pages/profile.dart';
import 'package:incodnito/utils/appBar.dart';
import 'package:incodnito/utils/uidata.dart';

class Landing extends StatefulWidget {
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
              BottomNavyBarItem(
                icon: Icon(
                  Icons.home,
                ),
                title: Text(
                  'Feed',
                  style: TextStyle(color: UIData.bottomTextColor),
                ),
                activeColor: UIData.bottomIconActiveColor,
                inactiveColor: UIData.bottomIconInactiveColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(
                  Icons.search,
                ),
                title: Text(
                  'Explore',
                  style: TextStyle(color: UIData.bottomTextColor),
                ),
                activeColor: UIData.bottomIconActiveColor,
                inactiveColor: UIData.bottomIconInactiveColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(
                  Icons.person,
                ),
                title: Text(
                  'Profile',
                  style: TextStyle(color: UIData.bottomTextColor),
                ),
                activeColor: UIData.bottomIconActiveColor,
                inactiveColor: UIData.bottomIconInactiveColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(
                  Icons.chat,
                ),
                title: Text(
                  'Inbox',
                  style: TextStyle(color: UIData.bottomTextColor),
                ),
                activeColor: UIData.bottomIconActiveColor,
                inactiveColor: UIData.bottomIconInactiveColor,
                textAlign: TextAlign.center,
              ),
              BottomNavyBarItem(
                icon: Icon(
                  Icons.notifications,
                ),
                title: Text(
                  'Notification',
                  style: TextStyle(color: UIData.bottomTextColor),
                ),
                activeColor: UIData.bottomIconActiveColor,
                inactiveColor: UIData.bottomIconInactiveColor,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          body: Stack(
            children: [
              _buildOffstageNavigator(0),
              _buildOffstageNavigator(1),
              _buildOffstageNavigator(2),
              _buildOffstageNavigator(3),
              _buildOffstageNavigator(4),
            ],
          )),
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
