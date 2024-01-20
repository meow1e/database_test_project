import 'package:database_test_project/core/consts/app_colors.dart';
import 'package:database_test_project/core/consts/app_icons.dart';
import 'package:database_test_project/core/consts/app_paddings.dart';
import 'package:database_test_project/core/consts/app_text_styles.dart';
import 'package:database_test_project/core/consts/getters.dart';
import 'package:flutter/material.dart';


class CommentContainer extends StatelessWidget {
  final String title;
  final String text;
  const CommentContainer({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration:  BoxDecoration(
          color: AppColors.ff221C44,
          borderRadius: 16.r
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Image(
                width: 40,
                  height: 40,
                  image: AssetImage(AppIcons.emptyProfPic)),
              15.w,
              Expanded(
                child: Text(title,
                  softWrap: true,
                  textAlign: TextAlign.left,
                  style: AppTextStyles.s16w400.copyWith(color: AppColors.ffFFFFFF),),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text,style: AppTextStyles.s14w400.copyWith(color: AppColors.ffFFFFFF),),
          )
        ],
      ),
    );
  }
}