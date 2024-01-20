import 'package:bloc/bloc.dart';
import 'package:database_test_project/core/data/repository/photos_repository.dart';
import 'package:database_test_project/core/data/repository/posts_reposyitory.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../data/model/photos/photos_model.dart';

part 'photos_state.dart';

@Injectable()
class PhotosCubit extends Cubit<PhotosState> {
  PhotosCubit(this._photosRepository) : super(PhotosInitial());
  final PhotosRepository _photosRepository;

  void photos() async{
    emit(PhotosLoading());
    try{
      List<PhotosModel> photosModel = await _photosRepository.photos();
      emit(PhotosSuccess(photosModel: photosModel));
    }catch (e){
      emit(PhotosFailure(error: e.toString()));
      rethrow;
    }
  }
}
