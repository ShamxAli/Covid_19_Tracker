import 'package:covid_19_tracker/models/global.dart';
import 'package:covid_19_tracker/networking/covid_api.dart';
import 'package:covid_19_tracker/widgets/custom_animator.dart';
import 'package:covid_19_tracker/widgets/custom_loader.dart';
import 'package:covid_19_tracker/widgets/global_card_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/rendering.dart';

class GlobalScreen extends StatelessWidget {
  final formatter = NumberFormat("###,###");

  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return FutureBuilder<Global>(
      future: CovidAPI().getGlobalData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          int numOfCases = snapshot.data.cases;
          int numOfRecoveredCases = snapshot.data.recovered;
          int numOfDeaths = snapshot.data.deaths;
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WidgetAnimator(
                    GlobalCardTile(
                      tileColor: Colors.blue,
                      caseType: 'Total Cases',
                      numOfCases: formatter.format(numOfCases),
                      assetImage: 'images/covidBlue.png',
                    ),
                  ),
                  WidgetAnimator(
                    GlobalCardTile(
                      tileColor: Colors.red.withAlpha(200),
                      caseType: 'Total Deaths',
                      numOfCases: formatter.format(numOfDeaths),
                      assetImage: 'images/death.png',
                    ),
                  ),
                  WidgetAnimator(
                    GlobalCardTile(
                      tileColor: Colors.green.withAlpha(200),
                      caseType: 'Total Recoveries',
                      numOfCases: formatter.format(numOfRecoveredCases),
                      assetImage: 'images/recover.png',
                    ),
                  ),
                ],
              ),
            ),
          );
        } else if (snapshot.hasError) {
          print('error is ${snapshot.error}');
        }
        return Container(
          width: width,
          height: height * 0.4,
          child: Center(
            child: VirusLoader(),
          ),
        );
      },
    );
  }
}
