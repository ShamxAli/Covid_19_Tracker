import 'package:covid_19_tracker/screens/nav_screens/countries_screen.dart';
import 'package:covid_19_tracker/screens/nav_screens/developer_screen.dart';
import 'package:covid_19_tracker/screens/nav_screens/global_screen.dart';
import 'package:covid_19_tracker/screens/nav_screens/health_screen.dart';
import 'package:covid_19_tracker/utils/data_lists.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _bottomNavIndex = 0;

  List<Widget> navList = [
    GlobalScreen(),
    CountriesScreen(),
    HealthScreen(),
    DeveloperScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: navList[_bottomNavIndex],
        ),
      ),

      /* ==================================== Bottom navigation bar =================================*/
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 10.0,
        currentIndex: _bottomNavIndex,
        items: bottomNavItems(),
        onTap: (index) {
          setState(() {
            _bottomNavIndex = index;
          });
        },
      ),
    );
  }
}
