part of 'albums_cubit.dart';

@immutable
abstract class AlbumsState {}

class AlbumsInitial extends AlbumsState {}
class AlbumsSuccess extends AlbumsState {
  final List<AlbumsModel> albumsModel;
  AlbumsSuccess({required this.albumsModel});
}
class AlbumsLoading extends AlbumsState {}
class AlbumsFailure extends AlbumsState {
  final String error;

  AlbumsFailure({required this.error});
}
