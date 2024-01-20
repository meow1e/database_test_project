import 'package:database_test_project/core/data/data_source/photos_datasource.dart';
import 'package:database_test_project/core/data/model/photos/photos_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class PhotosRepository{
  final PhotosDataSource _photosDataSource;

  PhotosRepository(this._photosDataSource);

  Future<List<PhotosModel>> photos() async {
    Response response = await _photosDataSource.photos();

    List<PhotosModel> result = (response.data as List).map((e) => PhotosModel.fromJson(e)).toList();

    return result;
  }
}