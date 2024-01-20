// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:database_test_project/core/data/data_source/album_datasource.dart'
    as _i10;
import 'package:database_test_project/core/data/data_source/check_datasource.dart'
    as _i12;
import 'package:database_test_project/core/data/data_source/comments_datasource.dart'
    as _i14;
import 'package:database_test_project/core/data/data_source/photos_datasource.dart'
    as _i4;
import 'package:database_test_project/core/data/data_source/posts_datasource.dart'
    as _i6;
import 'package:database_test_project/core/data/data_source/users_datasource.dart'
    as _i8;
import 'package:database_test_project/core/data/repository/albums_repository.dart'
    as _i11;
import 'package:database_test_project/core/data/repository/check_repository.dart'
    as _i13;
import 'package:database_test_project/core/data/repository/comments_repository.dart'
    as _i15;
import 'package:database_test_project/core/data/repository/photos_repository.dart'
    as _i5;
import 'package:database_test_project/core/data/repository/posts_reposyitory.dart'
    as _i7;
import 'package:database_test_project/core/data/repository/users_repository.dart'
    as _i9;
import 'package:database_test_project/core/domain/albums/albums_cubit.dart'
    as _i19;
import 'package:database_test_project/core/domain/check/check_cubit.dart'
    as _i20;
import 'package:database_test_project/core/domain/comments/comments_cubit.dart'
    as _i21;
import 'package:database_test_project/core/domain/photos/photos_cubit.dart'
    as _i16;
import 'package:database_test_project/core/domain/posts/posts_cubit.dart'
    as _i17;
import 'package:database_test_project/core/domain/users/users_cubit.dart'
    as _i18;
import 'package:database_test_project/core/services/dio_module.dart' as _i22;
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final modules = _$Modules();
    gh.factory<String>(
      () => modules.baseUrl,
      instanceName: 'Base_url',
    );
    gh.lazySingleton<_i3.Dio>(
        () => modules.dio(gh<String>(instanceName: 'Base_url')));
    gh.factory<_i4.PhotosDataSource>(
        () => _i4.PhotosDataSource(dio: gh<_i3.Dio>()));
    gh.factory<_i5.PhotosRepository>(
        () => _i5.PhotosRepository(gh<_i4.PhotosDataSource>()));
    gh.factory<_i6.PostsDataSource>(
        () => _i6.PostsDataSource(dio: gh<_i3.Dio>()));
    gh.factory<_i7.PostsRepository>(
        () => _i7.PostsRepository(gh<_i6.PostsDataSource>()));
    gh.factory<_i8.UsersDataSource>(
        () => _i8.UsersDataSource(dio: gh<_i3.Dio>()));
    gh.factory<_i9.UsersRepository>(
        () => _i9.UsersRepository(gh<_i8.UsersDataSource>()));
    gh.factory<_i10.AlbumsDataSource>(
        () => _i10.AlbumsDataSource(dio: gh<_i3.Dio>()));
    gh.factory<_i11.AlbumsRepository>(
        () => _i11.AlbumsRepository(gh<_i10.AlbumsDataSource>()));
    gh.factory<_i12.CheckDataSource>(
        () => _i12.CheckDataSource(dio: gh<_i3.Dio>()));
    gh.factory<_i13.CheckRepository>(
        () => _i13.CheckRepository(gh<_i12.CheckDataSource>()));
    gh.factory<_i14.CommentsDataSource>(
        () => _i14.CommentsDataSource(dio: gh<_i3.Dio>()));
    gh.factory<_i15.CommentsRepository>(
        () => _i15.CommentsRepository(gh<_i14.CommentsDataSource>()));
    gh.factory<_i16.PhotosCubit>(
        () => _i16.PhotosCubit(gh<_i5.PhotosRepository>()));
    gh.factory<_i17.PostsCubit>(
        () => _i17.PostsCubit(gh<_i7.PostsRepository>()));
    gh.factory<_i18.UsersCubit>(
        () => _i18.UsersCubit(gh<_i9.UsersRepository>()));
    gh.factory<_i19.AlbumsCubit>(
        () => _i19.AlbumsCubit(gh<_i11.AlbumsRepository>()));
    gh.factory<_i20.CheckCubit>(
        () => _i20.CheckCubit(gh<_i13.CheckRepository>()));
    gh.factory<_i21.CommentsCubit>(
        () => _i21.CommentsCubit(gh<_i15.CommentsRepository>()));
    return this;
  }
}

class _$Modules extends _i22.Modules {}
