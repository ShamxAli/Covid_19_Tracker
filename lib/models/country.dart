
class CountryList {
  final List<Country> countries;

  CountryList({this.countries});

  factory CountryList.fromJson(List<dynamic> parsedJson) {
    List<Country> list = new List<Country>();
    list = parsedJson.map((i) => Country.fromJson(i)).toList();

    return new CountryList(countries: list);
  }
}

class Country {
  Country({
    this.updated,
    this.country,
    this.countryInfo,
    this.cases,
    this.todayCases,
    this.deaths,
    this.todayDeaths,
    this.recovered,
    this.todayRecovered,
    this.active,
    this.critical,
    this.casesPerOneMillion,
    this.deathsPerOneMillion,
    this.tests,
    this.testsPerOneMillion,
    this.population,
    this.continent,
    this.oneCasePerPeople,
    this.oneDeathPerPeople,
    this.oneTestPerPeople,
    this.activePerOneMillion,
    this.recoveredPerOneMillion,
    this.criticalPerOneMillion,
  });

  num updated;
  String country;
  CountryInfo countryInfo;
  num cases;
  num todayCases;
  num deaths;
  num todayDeaths;
  num recovered;
  num todayRecovered;
  num active;
  num critical;
  num casesPerOneMillion;
  num deathsPerOneMillion;
  num tests;
  num testsPerOneMillion;
  num population;
  String continent;
  num oneCasePerPeople;
  num oneDeathPerPeople;
  num oneTestPerPeople;
  num activePerOneMillion;
  num recoveredPerOneMillion;
  num criticalPerOneMillion;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        updated: json["updated"],
        country: json["country"].toString(),
        countryInfo: CountryInfo.fromJson(json["countryInfo"]),
        cases: json["cases"],
        todayCases: json["todayCases"],
        deaths: json["deaths"],
        todayDeaths: json["todayDeaths"],
        recovered: json["recovered"],
        todayRecovered: json["todayRecovered"],
        active: json["active"],
        critical: json["critical"],
        casesPerOneMillion: json["casesPerOneMillion"],
        deathsPerOneMillion: json["deathsPerOneMillion"],
        tests: json["tests"],
        testsPerOneMillion: json["testsPerOneMillion"],
        population: json["population"],
        continent: json["continent"].toString(),
        oneCasePerPeople: json["oneCasePerPeople"],
        oneDeathPerPeople: json["oneDeathPerPeople"],
        oneTestPerPeople: json["oneTestPerPeople"],
        activePerOneMillion: json["activePerOneMillion"],
        recoveredPerOneMillion: json["recoveredPerOneMillion"],
        criticalPerOneMillion: json["criticalPerOneMillion"],
      );
}

class CountryInfo {
  CountryInfo({
    this.id,
    this.iso2,
    this.iso3,
    this.lat,
    this.long,
    this.flag,
  });

  num id;
  String iso2;
  String iso3;
  num lat;
  num long;
  String flag;

  factory CountryInfo.fromJson(Map<String, dynamic> json) => CountryInfo(
        id: json["_id"],
        iso2: json["iso2"].toString(),
        iso3: json["iso3"].toString(),
        lat: json["lat"],
        long: json["long"],
        flag: json["flag"].toString(),
      );
}
