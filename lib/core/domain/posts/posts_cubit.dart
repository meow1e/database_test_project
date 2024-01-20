import 'package:bloc/bloc.dart';
import 'package:database_test_project/core/data/model/posts/posts_model.dart';
import 'package:database_test_project/core/data/repository/posts_reposyitory.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'posts_state.dart';

@Injectable()
class PostsCubit extends Cubit<PostsState> {
  PostsCubit(this._postsRepository) : super(PostsInitial());
  final PostsRepository _postsRepository;

  void posts() async {
    emit(PostsLoading());
    try{
      List<PostsModel> postList = await _postsRepository.posts();
      emit(PostsSuccess(postsModel: postList));
    } catch (e) {
      emit(PostsFailure(error: e.toString()));
      rethrow;
    }
  }
}
