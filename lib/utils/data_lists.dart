import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<BottomNavigationBarItem> bottomNavItems() {
  return [
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.globe),
      title: Text('Global'),
    ),
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.flagCheckered),
      title: Text('Countries'),
    ),
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.heartbeat),
      title: Text('Health'),
    ),
    BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.laptopCode),
      title: Text('Developer'),
    ),
  ];
}
