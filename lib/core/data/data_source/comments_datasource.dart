import 'package:database_test_project/core/data/model/comments/comments_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class CommentsDataSource{
  final Dio _dio;

  CommentsDataSource({required Dio dio}) : _dio = dio;

  Future<Response> comments() async {
    Response response = await _dio.get('comments');

    return response;
  }
}
