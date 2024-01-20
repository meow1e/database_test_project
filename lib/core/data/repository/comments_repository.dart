
import 'package:database_test_project/core/data/data_source/check_datasource.dart';
import 'package:database_test_project/core/data/model/check/check_model.dart';
import 'package:database_test_project/core/data/model/comments/comments_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../data_source/comments_datasource.dart';

@Injectable()
class CommentsRepository{
  final CommentsDataSource _commentsDataSource;

  CommentsRepository(this._commentsDataSource);

  Future<List<CommentsModel>> comments() async {
    Response response = await _commentsDataSource.comments();

    List<CommentsModel> result = (response.data as List).map((e) => CommentsModel.fromJson(e)).toList();

    return result;
  }
}