// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'global.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Global _$GlobalFromJson(Map<String, dynamic> json) {
  return Global(
    cases: json['cases'] as int,
    deaths: json['deaths'] as int,
    recovered: json['recovered'] as int,
  );
}

Map<String, dynamic> _$GlobalToJson(Global instance) => <String, dynamic>{
      'cases': instance.cases,
      'recovered': instance.recovered,
      'deaths': instance.deaths,
    };
