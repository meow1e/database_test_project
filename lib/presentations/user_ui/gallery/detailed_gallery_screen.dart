import 'package:auto_route/auto_route.dart';
import 'package:database_test_project/core/domain/photos/photos_cubit.dart';
import 'package:database_test_project/core/injections/injections.dart';
import 'package:database_test_project/presentations/widgets/image_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/consts/app_colors.dart';
import '../../../core/consts/app_text_styles.dart';

@RoutePage()
class DetailedGalleryScreen extends StatelessWidget {
  final String detailedImage;
  const DetailedGalleryScreen({Key? key, required this.detailedImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ff322C54,
      body: Center(
        child: GestureDetector(
          onTap: () {
            context.router.pop();
          },
          child: Image.network(
            detailedImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
