import 'package:database_test_project/core/consts/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/consts/app_colors.dart';

class ContactsContainer extends StatelessWidget {
  final String text;
  const ContactsContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: AppColors.ff7F78A7),
        borderRadius: BorderRadius.circular(8)
      ),
      child:  Align(
        alignment: Alignment.centerLeft,
          child: Text(text,style: AppTextStyles.s16w400.copyWith(color: AppColors.ffFFFFFF),)),
    );
  }
}


