import 'package:covid_19_tracker/widgets/global_card_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GlobalScreen extends StatefulWidget {
  @override
  _GlobalScreenState createState() => _GlobalScreenState();
}

class _GlobalScreenState extends State<GlobalScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Stay Home, Stay Safe!'),
            ),
            GlobalCardTile(
              tileColor: Colors.blue,
              caseType: 'Total Cases',
              numOfCases: '789923749832',
              assetImage: 'images/covidBlue.png',
            ),
            GlobalCardTile(
              tileColor: Colors.red.withAlpha(200),
              caseType: 'Total Deaths',
              numOfCases: '80938432',
              assetImage: 'images/death.png',
            ),
            GlobalCardTile(
              tileColor: Colors.green.withAlpha(200),
              caseType: 'Total Recoveries',
              numOfCases: '74982374',
              assetImage: 'images/recover.png',
            ),
          ],
        ),
      ),
    );
  }
}
