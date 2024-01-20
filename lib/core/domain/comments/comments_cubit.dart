import 'package:bloc/bloc.dart';
import 'package:database_test_project/core/data/model/comments/comments_model.dart';
import 'package:database_test_project/core/data/repository/comments_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'comments_state.dart';
@Injectable()
class CommentsCubit extends Cubit<CommentsState> {
  CommentsCubit(this._commentsRepository) : super(CommentsInitial());
  final CommentsRepository _commentsRepository;

  void comments() async{
    emit(CommentsLoading());
    try{
      List<CommentsModel> commentsModel = await _commentsRepository.comments();
      emit(CommentsSuccess(commentsModel));
    }catch (e){
      emit(CommentsFailure(error: e.toString()));
    }
  }
}
