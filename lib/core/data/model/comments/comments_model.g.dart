// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentsModel _$CommentsModelFromJson(Map<String, dynamic> json) =>
    CommentsModel(
      json['postId'] as int?,
      json['id'] as int?,
      json['name'] as String?,
      json['email'] as String?,
      json['body'] as String?,
    );

Map<String, dynamic> _$CommentsModelToJson(CommentsModel instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body,
    };
