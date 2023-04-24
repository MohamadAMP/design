import 'package:design/home_page.dart';
import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'info_screen.dart';
import 'my_flutter_app_icons.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final iconList = <Widget>[
    Column(
      children: const [
        Icon(MyFlutterApp.purse),
        Text("Wallet"),
      ],
    ),
    Column(
      children: const [
        Icon(Icons.leaderboard_outlined),
        Text("Leaderboard"),
      ],
    ),
    Column(
      children: const [
        Icon(Icons.info_outline),
        Text("Info"),
      ],
    ),
    Column(
      children: const [
        Icon(Icons.person),
        Text("Account"),
      ],
    ),
  ];
  final List<Widget> screens = [
    const InfoScreen(),
    const InfoScreen(),
    const HomePage(),
    const InfoScreen(),
    const InfoScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          items: iconList,
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: Container(
          color: Colors.blueAccent,
          child: Center(
            child: Column(
              children: <Widget>[
                Text(_page.toString(), textScaleFactor: 10.0),
                ElevatedButton(
                  child: const Text('Go To Page of index 1'),
                  onPressed: () {
                    //Page change using state does the same as clicking index 1 navigation button
                    final CurvedNavigationBarState? navBarState =
                        _bottomNavigationKey.currentState;
                    navBarState?.setPage(1);
                  },
                )
              ],
            ),
          ),
        ));
  }
}
