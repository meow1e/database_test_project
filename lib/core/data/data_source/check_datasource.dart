import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class CheckDataSource{
  final Dio _dio;

  CheckDataSource({required Dio dio}) : _dio = dio;

  Future<Response> checks() async {
    Response response = await _dio.get('todos');

    return response;
  }
}
