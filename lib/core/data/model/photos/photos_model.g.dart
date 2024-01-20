// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photos_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotosModel _$PhotosModelFromJson(Map<String, dynamic> json) => PhotosModel(
      json['id'] as int?,
      json['albumId'] as int?,
      json['url'] as String?,
      json['thumbnailUrl'] as String?,
    );

Map<String, dynamic> _$PhotosModelToJson(PhotosModel instance) =>
    <String, dynamic>{
      'albumId': instance.albumId,
      'id': instance.id,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };
