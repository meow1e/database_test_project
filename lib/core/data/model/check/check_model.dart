import 'package:json_annotation/json_annotation.dart';

part 'check_model.g.dart';

@JsonSerializable()
class CheckModel{
  final int? userId;
  final int? id;
  final String? title;
  final bool completed;


  factory CheckModel.fromJson(Map<String, dynamic> json) =>
      _$CheckModelFromJson(json);

  CheckModel(this.userId, this.id, this.title, this.completed);
}