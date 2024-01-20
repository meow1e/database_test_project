part of 'posts_cubit.dart';

@immutable
abstract class PostsState {}

class PostsInitial extends PostsState {}
class PostsLoading extends PostsState {}
class PostsSuccess extends PostsState {
    final List<PostsModel> postsModel;

  PostsSuccess({required this.postsModel});}

class PostsFailure extends PostsState {
  final String error;

  PostsFailure({required this.error});
}
