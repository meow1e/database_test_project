import 'package:database_test_project/core/data/data_source/posts_datasource.dart';
import 'package:database_test_project/core/data/model/posts/posts_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class PostsRepository{
  final PostsDataSource _postsDataSource;

  PostsRepository(this._postsDataSource);

  Future<List<PostsModel>> posts() async {
    Response response = await _postsDataSource.posts();

    List<PostsModel> result = (response.data as List).map((e) => PostsModel.fromJson(e)).toList();

    return result;
  }
}