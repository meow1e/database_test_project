part of 'check_cubit.dart';

@immutable
abstract class CheckState {}

class CheckInitial extends CheckState {}
class CheckLoading extends CheckState {}
class CheckSuccess extends CheckState {
  final List<CheckModel> checkModel;

  CheckSuccess(this.checkModel);
}
class CheckFailure extends CheckState {
  final String error;

  CheckFailure({required this.error});
}
