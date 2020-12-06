import 'package:covid_19_tracker/screens/details/countries_details.dart';
import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  var snapshot;
  var recentList = ['Afghanistan', 'Albania', 'Algeria', 'Andorra'];
  List<String> countryList;

  DataSearch({this.countryList, this.snapshot});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final suggestionList = countryList
        .where((element) => element.toLowerCase().startsWith(query))
        .toList();

    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(suggestionList.isEmpty ? null : Icons.location_city),
            title: Text(suggestionList[index]),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CountryDetails(
                            countryName: snapshot.data.countries[index].country,
                            totalCases: snapshot.data.countries[index].cases,
                            totalRecovered:
                                snapshot.data.countries[index].recovered,
                            totalDeaths: snapshot.data.countries[index].deaths,
                            todayCases:
                                snapshot.data.countries[index].todayCases,
                            todayDeaths:
                                snapshot.data.countries[index].todayDeaths,
                            activeCases: snapshot.data.countries[index].active,
                            cCases: snapshot.data.countries[index].critical,
                            totalTests: snapshot.data.countries[index].tests,
                          )));
            },
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentList
        : countryList
            .where((element) =>
                element.toLowerCase().startsWith(query.toLowerCase()))
            .toList();

    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(query.isEmpty ? Icons.history : Icons.location_city),
            title: Text(suggestionList[index]),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CountryDetails(
                            countryName: snapshot.data.countries[index].country,
                            totalCases: snapshot.data.countries[index].cases,
                            totalRecovered:
                                snapshot.data.countries[index].recovered,
                            totalDeaths: snapshot.data.countries[index].deaths,
                            todayCases:
                                snapshot.data.countries[index].todayCases,
                            todayDeaths:
                                snapshot.data.countries[index].todayDeaths,
                            activeCases: snapshot.data.countries[index].active,
                            cCases: snapshot.data.countries[index].critical,
                            totalTests: snapshot.data.countries[index].tests,
                          )));
            },
          );
        });
  }
}
