part of 'photos_cubit.dart';

@immutable
abstract class PhotosState {}

class PhotosInitial extends PhotosState {}
class PhotosSuccess extends PhotosState {
  final List<PhotosModel> photosModel;

  PhotosSuccess({required this.photosModel});
}
class PhotosLoading extends PhotosState {}
class PhotosFailure extends PhotosState {
  final String error;
  PhotosFailure({required this.error});
}
