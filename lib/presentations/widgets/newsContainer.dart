import 'package:database_test_project/core/consts/app_colors.dart';
import 'package:database_test_project/core/consts/app_paddings.dart';
import 'package:database_test_project/core/consts/app_text_styles.dart';
import 'package:database_test_project/core/consts/getters.dart';
import 'package:flutter/material.dart';


class NewsContained extends StatelessWidget {
  final String title;
  final String text;
  const NewsContained({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration:  BoxDecoration(
        color: AppColors.ff221C44,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,style: AppTextStyles.s16w400.copyWith(color: AppColors.ffFFFFFF),),
          8.h,
          Text(text,style: AppTextStyles.s14w400.copyWith(color: AppColors.ffFFFFFF),)
        ],
      ),
    );
  }
}
