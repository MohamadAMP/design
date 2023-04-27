import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:design/screens/account.dart';
import 'package:design/screens/home_page.dart';
import 'package:design/screens/leaderboard.dart';
import 'package:design/screens/wallet.dart';
import 'package:flutter/material.dart';

import 'info_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final iconList = <IconData>[
    Icons.wallet_outlined,
    Icons.leaderboard_outlined,
    Icons.info_outline,
    Icons.person,
  ];
  final List<Widget> screens = [
    const InfoScreen(),
    const InfoScreen(),
    const HomePage(),
    const InfoScreen(),
    const InfoScreen(),
  ];

  final _bottomNavIndex = 0;
  Widget currentScreen = const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFFF4365D),
          onPressed: () {
            setState(() {
              currentScreen = const HomePage();
            });
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Image.asset("assets/icons/helen.png"),
          ),
          //params
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          activeIndex: _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.smoothEdge,
          onTap: (index) => setState(() => index == 0
              ? currentScreen = const Wallet()
              : index == 1
                  ? currentScreen = const LeaderBoard()
                  : index == 2
                      ? currentScreen = const InfoScreen()
                      : currentScreen = const AccountScreen()),
          //other params
        ),
        body: currentScreen);
  }
}
