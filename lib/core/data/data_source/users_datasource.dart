import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class UsersDataSource{
  final Dio _dio;

  UsersDataSource({required Dio dio}) : _dio = dio;

  Future<Response> users() async {
    Response response = await _dio.get('users');

    return response;
  }
}
