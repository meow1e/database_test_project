

import 'package:json_annotation/json_annotation.dart';

part 'geo_model.g.dart';
@JsonSerializable()
class GeoModel{
  final String? lat;
  final String? lng;

  factory GeoModel.fromJson(Map<String, dynamic> json) =>
      _$GeoModelFromJson(json);

  GeoModel(this.lat, this.lng);
}