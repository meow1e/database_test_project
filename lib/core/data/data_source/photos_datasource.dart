import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class PhotosDataSource{
  final Dio _dio;

  PhotosDataSource({required Dio dio}) : _dio = dio;

  Future<Response> photos () async {
    Response response = await _dio.get('photos');

    return response;
  }
}
