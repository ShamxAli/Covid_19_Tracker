
import 'package:json_annotation/json_annotation.dart';

part 'global.g.dart';

@JsonSerializable()
class Global {
  int cases;
  int recovered;
  int deaths;

  Global({this.cases, this.deaths, this.recovered});

  // Global.fromJson(Map<String, dynamic> json) {
  //   cases = json['cases'];
  //   recovered = json['recovered'];
  //   deaths = json['deaths'];
  // }
  //
  //

  factory Global.fromJson(Map<String , dynamic> parsedJson) => _$GlobalFromJson(parsedJson);

  Map<String , dynamic> toJson() => _$GlobalToJson(this);

}
