import 'package:bloc/bloc.dart';
import 'package:database_test_project/core/data/repository/albums_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../data/model/album/album_model.dart';

part 'albums_state.dart';
@Injectable()
class AlbumsCubit extends Cubit<AlbumsState> {
  AlbumsCubit(this._albumsRepository) : super(AlbumsInitial());
  final AlbumsRepository _albumsRepository;

  void albums() async {
    emit(AlbumsLoading());
    try{
      List<AlbumsModel> albumsList = await _albumsRepository.albums();
      emit(AlbumsSuccess(albumsModel: albumsList));
    }
    catch (e) {
      emit(AlbumsFailure(error: e.toString()));
      rethrow;
    }
  }
}
