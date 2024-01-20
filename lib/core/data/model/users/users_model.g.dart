// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersModel _$UsersModelFromJson(Map<String, dynamic> json) => UsersModel(
      json['id'] as int?,
      json['name'] as String,
      json['username'] as String?,
      json['body'] as String?,
      json['email'] as String?,
      json['addressModel'] == null
          ? null
          : AddressModel.fromJson(json['addressModel'] as Map<String, dynamic>),
      json['companyModel'] == null
          ? null
          : CompanyModel.fromJson(json['companyModel'] as Map<String, dynamic>),
      json['phone'] as String?,
      json['website'] as String?,
      json['geoModel'] == null
          ? null
          : GeoModel.fromJson(json['geoModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsersModelToJson(UsersModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'body': instance.body,
      'email': instance.email,
      'addressModel': instance.addressModel,
      'companyModel': instance.companyModel,
      'geoModel': instance.geoModel,
      'phone': instance.phone,
      'website': instance.website,
    };
