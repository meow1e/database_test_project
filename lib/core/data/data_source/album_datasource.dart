import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class AlbumsDataSource{
  final Dio _dio;

  AlbumsDataSource({required Dio dio}) : _dio = dio;

  Future<Response> posts() async {
    Response response = await _dio.get('albums');
    return response;
  }
}
