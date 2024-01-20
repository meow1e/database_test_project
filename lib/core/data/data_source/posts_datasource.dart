import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class PostsDataSource{
  final Dio _dio;

  PostsDataSource({required Dio dio}) : _dio = dio;

  Future<Response> posts() async {
    Response response = await _dio.get('posts');

    return response;
  }
}
