import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CountryDetails extends StatelessWidget {
  final String countryName;
  final int totalRecovered;
  final int totalCases;
  final int totalDeaths;
  final int activeCases;
  final int cCases;
  final int totalTests;
  final int todayCases;
  final int todayDeaths;

  CountryDetails(
      {this.countryName,
      this.totalCases,
      this.cCases,
      this.totalTests,
      this.activeCases,
      this.todayDeaths,
      this.todayCases,
      this.totalDeaths,
      this.totalRecovered});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(countryName),
            ),
            body: Column(children: <Widget>[
              DetailCard(
                heading: "Total Cases",
                info: totalCases,
                icon: Icons.assignment,
                iconColor: Colors.blue,
              ),
              DetailCard(
                heading: "Total Deaths",
                iconColor: Colors.red[300],
                icon: Icons.airline_seat_individual_suite,
                info: totalDeaths,
              ),
              DetailCard(
                heading: "Total Recoveries",
                iconColor: Colors.green,
                icon: Icons.verified_user,
                info: totalRecovered,
              ),
              DetailCard(
                heading: "Today Cases",
                info: todayCases,
                icon: Icons.assignment,
                iconColor: Colors.blue,
              ),
              DetailCard(
                heading: "Today Deaths",
                info: todayDeaths,
                icon: Icons.airline_seat_individual_suite,
                iconColor: Colors.red[300],
              ),
              DetailCard(
                heading: "Total Tests",
                info: totalTests,
                icon: Icons.colorize,
                iconColor: Colors.amber,
              ),
              DetailCard(
                heading: "Critical Cases",
                info: cCases,
                icon: Icons.add_circle,
                iconColor: Colors.blueGrey,
              )
            ])));
  }
}

class DetailCard extends StatelessWidget {
  final int info;
  final String heading;
  final IconData icon;
  final Color iconColor;

  DetailCard({this.info, this.icon, this.heading, this.iconColor});

  final formatter = NumberFormat("###,###");

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Card(
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: ListTile(
          title: Text(
            "${formatter.format(info)}",
            style: TextStyle(fontSize: height * 0.04, fontFamily: "MyFont"),
          ),
          subtitle: Text(
            heading,
            style: TextStyle(fontSize: height * 0.02, fontFamily: "MyFont"),
          ),
          trailing: Icon(
            icon,
            size: height * 0.06,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}