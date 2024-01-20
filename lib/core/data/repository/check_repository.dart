
import 'package:database_test_project/core/data/data_source/check_datasource.dart';
import 'package:database_test_project/core/data/model/check/check_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class CheckRepository{
  final CheckDataSource _checkDataSource;

  CheckRepository(this._checkDataSource);



  Future<List<CheckModel>> checks() async {
    Response response = await _checkDataSource.checks();

    List<CheckModel> result = (response.data as List).map((e) => CheckModel.fromJson(e)).toList();

    return result;
  }
}