import 'dart:convert';
import 'package:covid_19_tracker/models/global.dart';
import 'package:covid_19_tracker/utils/constants.dart';
import 'package:http/http.dart' as http;

class CovidAPI {
  /* ================================= Load Global Data =================================*/
  Future<Global> getGlobalData() async {
    http.Response response = await http.get("$BASE_URL/v3/covid-19/all");
    if (response.statusCode == 200) {
      return Global.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }

  /* ================================= Load Country Data =================================*/

}
