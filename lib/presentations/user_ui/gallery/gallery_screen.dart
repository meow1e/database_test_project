import 'package:auto_route/auto_route.dart';
import 'package:database_test_project/core/domain/photos/photos_cubit.dart';
import 'package:database_test_project/core/injections/injections.dart';
import 'package:database_test_project/core/router/app_router.dart';
import 'package:database_test_project/presentations/widgets/image_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/consts/app_colors.dart';
import '../../../core/consts/app_text_styles.dart';

@RoutePage()
class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<PhotosCubit>()..photos(),
        child: Scaffold(
            backgroundColor: AppColors.ff0F0B21,
            appBar: AppBar(
              title: Text(
                'Gallery',
                style:
                    AppTextStyles.s20w600.copyWith(color: AppColors.ffFFFFFF),
              ),
              centerTitle: true,
              backgroundColor: AppColors.ff221C44,
            ),
            body: BlocBuilder<PhotosCubit, PhotosState>(
                builder: (context, state) {
              if (state is PhotosLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state is PhotosSuccess) {
                return GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.5,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8),
                    itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            context.router.push(DetailedGalleryRoute(
                                detailedImage: state.photosModel[index].url!));
                          },
                          child: Row(
                            children: [
                              Text(
                                state.photosModel[index].albumId.toString(),
                                style: AppTextStyles.s14w400
                                    .copyWith(color: AppColors.ffFFFFFF),
                              ),
                              Image.network(
                                  state.photosModel[index].thumbnailUrl!),
                            ],
                          ),
                        ));
              }
              if (state is PhotosFailure) {
                return Text(state.error);
              } else {
                return Container(
                  color: Colors.red,
                );
              }
            })));
  }
}
