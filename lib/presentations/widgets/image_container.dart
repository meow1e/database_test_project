import 'package:database_test_project/core/consts/app_colors.dart';
import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
final String image;
  const ImageContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.ff322C54
      ),
      child: Image.network(image),
    );
  }
}
