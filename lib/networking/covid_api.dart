import 'dart:convert';
import 'package:covid_19_tracker/models/country.dart';
import 'package:covid_19_tracker/models/global.dart';
import 'package:covid_19_tracker/utils/constants.dart';
import 'package:http/http.dart' as http;

class CovidAPI {
  /* ================================= Load Global Data =================================*/
  Future<Global> getGlobalData() async {
    String url = "${BASE_URL + GLOBAL}";

    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = await jsonDecode(response.body);
      return Global.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load post');
    }
  }

  /* ================================= Load Countries Data =================================*/

  Future<CountryList> getCountriesData() async {
    String url = '${BASE_URL + COUNTRY}';
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      return CountryList.fromJson(jsonResponse);
    } else {
      throw Exception('Failed to load the countries data');
    }
  }
}
