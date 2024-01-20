
import 'package:json_annotation/json_annotation.dart';

part 'address_model.g.dart';

@JsonSerializable()
class AddressModel{
  final String? street;
  final String? suite;
  final String? city;
  final String? zipcode;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);

  AddressModel(this.street, this.suite, this.city, this.zipcode, );
}