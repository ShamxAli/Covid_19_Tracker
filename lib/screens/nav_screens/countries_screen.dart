import 'package:covid_19_tracker/models/country.dart';
import 'package:covid_19_tracker/networking/covid_api.dart';
import 'package:covid_19_tracker/search/data_search.dart';
import 'package:covid_19_tracker/widgets/custom_animator.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../details/countries_details.dart';

class CountriesScreen extends StatefulWidget {
  @override
  _CountriesScreenState createState() => _CountriesScreenState();
}

class _CountriesScreenState extends State<CountriesScreen> {
  final formatter = NumberFormat("###,###");
  List<String> countryList = new List<String>();
  var snapshotData;



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Search Country'),
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(
                      context: context,
                      delegate: DataSearch(
                          countryList: countryList, snapshot: snapshotData));
                })
          ],
        ),
        body: FutureBuilder(
          future: CovidAPI().getCountriesData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              snapshotData = snapshot;
              // Adding list for passing it to search delegate
              for (int i = 0; i < snapshot.data.countries.length; i++) {
                countryList.add(snapshot.data.countries[i].country);
              }
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
                      subtitle: Text(
                          'Cases ${formatter.format(snapshot.data.countries[index].cases)}'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CountryDetails(
                                      countryName: snapshot
                                          .data.countries[index].country,
                                      totalCases:
                                          snapshot.data.countries[index].cases,
                                      totalRecovered: snapshot
                                          .data.countries[index].recovered,
                                      totalDeaths:
                                          snapshot.data.countries[index].deaths,
                                      todayCases: snapshot
                                          .data.countries[index].todayCases,
                                      todayDeaths: snapshot
                                          .data.countries[index].todayDeaths,
                                      activeCases:
                                          snapshot.data.countries[index].active,
                                      cCases: snapshot
                                          .data.countries[index].critical,
                                      totalTests:
                                          snapshot.data.countries[index].tests,
                                    )));
                      },
                    ),
                  ));
                },
              );
            } else if (snapshot.hasError) {}
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}

