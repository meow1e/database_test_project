import 'package:database_test_project/core/data/data_source/album_datasource.dart';
import 'package:database_test_project/core/data/data_source/posts_datasource.dart';
import 'package:database_test_project/core/data/model/album/album_model.dart';
import 'package:database_test_project/core/data/model/posts/posts_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class AlbumsRepository{
  final AlbumsDataSource _albumsDataSource;

  AlbumsRepository(this._albumsDataSource);

  Future<List<AlbumsModel>> albums() async {
    Response response = await _albumsDataSource.posts();

    List<AlbumsModel> result = (response.data as List).map((e) => AlbumsModel.fromJson(e)).toList();

    return result;
  }
}