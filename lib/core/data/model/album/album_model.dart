import 'package:json_annotation/json_annotation.dart';

part 'album_model.g.dart';

@JsonSerializable()
class AlbumsModel{
  final int? userId;
  final int? id;
  final String? title;

  AlbumsModel(this.id, this.userId, this.title);

  factory AlbumsModel.fromJson(Map<String, dynamic> json) =>
      _$AlbumsModelFromJson(json);
}