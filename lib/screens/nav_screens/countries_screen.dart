import 'package:covid_19_tracker/networking/covid_api.dart';
import 'package:covid_19_tracker/widgets/custom_animator.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CountriesScreen extends StatefulWidget {
  @override
  _CountriesScreenState createState() => _CountriesScreenState();
}

class _CountriesScreenState extends State<CountriesScreen> {
  final formatter = NumberFormat("###,###");

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: CovidAPI().getCountriesData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
            itemCount: snapshot.data.countries.length,
            itemBuilder: (context, index) {
              return WidgetAnimator(Card(
                child: ListTile(
                  trailing: Icon(
                    Icons.play_arrow,
                    size: 15.0,
                  ),
                  title: Text(snapshot.data.countries[index].country),
                  subtitle:
                      Text('Cases ${formatter.format(snapshot.data.countries[index].cases)}'),
                ),
              ));
            },
          );
        } else if (snapshot.hasError) {}
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
