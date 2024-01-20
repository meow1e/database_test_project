import 'package:database_test_project/core/data/data_source/users_datasource.dart';
import 'package:database_test_project/core/data/model/users/users_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class UsersRepository{
  final UsersDataSource _usersDataSource;

  UsersRepository(this._usersDataSource);

    Future<List<UsersModel>> users() async {
      Response response = await _usersDataSource.users();
      return (response.data as List).map((e) => UsersModel.fromJson(e)).toList();
    }
  }

