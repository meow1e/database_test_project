// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CheckModel _$CheckModelFromJson(Map<String, dynamic> json) => CheckModel(
      json['userId'] as int?,
      json['id'] as int?,
      json['title'] as String?,
      json['completed'] as bool,
    );

Map<String, dynamic> _$CheckModelToJson(CheckModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'completed': instance.completed,
    };
