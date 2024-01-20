
import 'package:database_test_project/core/data/model/users/address/address_model.dart';
import 'package:database_test_project/core/data/model/users/company/company_model.dart';
import 'package:database_test_project/core/data/model/users/geo/geo_model.dart';
import 'package:json_annotation/json_annotation.dart';


part 'users_model.g.dart';

@JsonSerializable()
class UsersModel{
  final int? id;
  final String name;
  final String? username;
  final String? body;
  final String? email;
  final AddressModel? addressModel;
  final CompanyModel? companyModel;
  final GeoModel? geoModel;
  final String? phone;
  final String? website;

  factory UsersModel.fromJson(Map<String, dynamic> json) =>
      _$UsersModelFromJson(json);

  UsersModel(this.id, this.name, this.username, this.body, this.email, this.addressModel, this.companyModel, this.phone, this.website, this.geoModel);

}


