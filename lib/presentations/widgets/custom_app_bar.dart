import 'package:database_test_project/core/consts/app_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/consts/app_colors.dart';
import '../../core/consts/app_text_styles.dart';
@override
Size get preferredSize => const Size.fromHeight(56);

class CustomAppBar extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const CustomAppBar({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [AppColors.ff322C54, AppColors.ff231D49])),
        child: Row(
          children: [Text(
            title ,
            style: AppTextStyles.s20w600.copyWith(color: AppColors.ffFFFFFF),
          ),
            CupertinoButton(onPressed: onPressed, child: SvgPicture.asset(AppIcons.chevronLeft))
        ]),
    );

  }
}



