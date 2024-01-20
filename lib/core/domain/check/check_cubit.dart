import 'package:bloc/bloc.dart';
import 'package:database_test_project/core/data/repository/check_repository.dart';
import 'package:database_test_project/core/data/repository/photos_repository.dart';
import 'package:database_test_project/core/data/repository/posts_reposyitory.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../data/model/check/check_model.dart';
import '../../data/model/photos/photos_model.dart';

part 'check_state.dart';

@Injectable()
class CheckCubit extends Cubit<CheckState> {
  CheckCubit(this._checkRepository) : super(CheckInitial());
  final CheckRepository _checkRepository;

  void checks() async{
    emit(CheckLoading());
    try{
      List<CheckModel> checkModel = await _checkRepository.checks();
      emit(CheckSuccess(checkModel));
    }catch (e){
      emit(CheckFailure(error: e.toString()));
      rethrow;
    }
  }
}
