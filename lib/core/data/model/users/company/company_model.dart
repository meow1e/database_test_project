

import 'package:json_annotation/json_annotation.dart';

part 'company_model.g.dart';
@JsonSerializable()
class CompanyModel{
  final String? name;
  final String? catchPhrase;
  final String? bs;

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);

  CompanyModel(this.name, this.catchPhrase, this.bs);
}