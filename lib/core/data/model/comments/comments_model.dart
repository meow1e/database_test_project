import 'package:json_annotation/json_annotation.dart';

part 'comments_model.g.dart';

@JsonSerializable()
class CommentsModel{
  final int? postId;
  final int? id;
  final String? name;
  final String? email;
  final String? body;

  factory CommentsModel.fromJson(Map<String, dynamic> json) =>
      _$CommentsModelFromJson(json);

  CommentsModel(this.postId, this.id, this.name, this.email, this.body);
}