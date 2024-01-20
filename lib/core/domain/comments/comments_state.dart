part of 'comments_cubit.dart';

@immutable
abstract class CommentsState {}

class CommentsInitial extends CommentsState {}
class CommentsLoading extends CommentsState {}
class CommentsSuccess extends CommentsState {
  final List<CommentsModel> commentsModel;

  CommentsSuccess(this.commentsModel);
}
class CommentsFailure extends CommentsState {
  final String error;

  CommentsFailure({required this.error});
}
