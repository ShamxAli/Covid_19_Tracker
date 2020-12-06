class Global {
  int cases;
  int recovered;
  int deaths;

  Global({this.cases, this.deaths, this.recovered});

  Global.fromJson(Map<String, dynamic> json) {
    cases = json['cases'];
    recovered = json['recovered'];
    deaths = json['deaths'];
  }
}
