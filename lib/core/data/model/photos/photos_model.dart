import 'package:json_annotation/json_annotation.dart';

part 'photos_model.g.dart';

@JsonSerializable()
class PhotosModel{
  final int? albumId;
  final int? id;
  final String? url;
  final String? thumbnailUrl;

  PhotosModel(this.id, this.albumId, this.url, this.thumbnailUrl, );

  factory PhotosModel.fromJson(Map<String, dynamic> json) =>
      _$PhotosModelFromJson(json);
}