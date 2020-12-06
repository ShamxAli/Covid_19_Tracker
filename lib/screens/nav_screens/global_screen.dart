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
          int caseCount = snapshot.data.cases;
          int deathCount = snapshot.data.deaths;
          int recoveredCount = snapshot.data.recovered;

          return Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WidgetAnimator(
                    GlobalCardTile(
                      tileColor: Colors.blue,
                      caseType: 'Total Cases',
                      numOfCases: formatter.format(caseCount),
                      assetImage: 'images/covidBlue.png',
                    ),
                  ),
                  WidgetAnimator(
                    GlobalCardTile(
                      tileColor: Colors.red.withAlpha(200),
                      caseType: 'Total Deaths',
                      numOfCases: formatter.format(deathCount),
                      assetImage: 'images/death.png',
                    ),
                  ),
                  WidgetAnimator(
                    GlobalCardTile(
                      tileColor: Colors.green.withAlpha(200),
                      caseType: 'Total Recoveries',
                      numOfCases: formatter.format(recoveredCount),
                      assetImage: 'images/recover.png',
                    ),
                  ),
                ],
              ));
        } else if (snapshot.hasError) {
          print('error is ${snapshot.error}');
          return Center(
            child: Text('Error while json parsing'),
          );
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
