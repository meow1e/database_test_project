part of 'users_cubit.dart';

@immutable
abstract class UsersState {}

class UsersInitial extends UsersState {}
class UsersSuccess extends UsersState {
  final List<UsersModel> usersModel;

  UsersSuccess(this.usersModel);
}
class UsersLoading extends UsersState {}
class UsersFailure extends UsersState {
  final String error;

  UsersFailure(this.error);

}
