import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../data/model/users/users_model.dart';
import '../../data/repository/users_repository.dart';

part 'users_state.dart';
@Injectable()
class UsersCubit extends Cubit<UsersState> {
  UsersCubit(this._usersRepository) : super(UsersInitial());
  final UsersRepository _usersRepository;

  void users() async {
    emit(UsersLoading());
    try{
      List<UsersModel> usersList = await _usersRepository.users();
      emit(UsersSuccess(usersList));
    } catch (e) {
      emit (UsersFailure(e.toString()));
      rethrow;
    }
  }
}
