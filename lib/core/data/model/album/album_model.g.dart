// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlbumsModel _$AlbumsModelFromJson(Map<String, dynamic> json) => AlbumsModel(
      json['id'] as int?,
      json['userId'] as int?,
      json['title'] as String?,
    );

Map<String, dynamic> _$AlbumsModelToJson(AlbumsModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
    };
