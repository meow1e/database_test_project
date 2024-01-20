import 'package:auto_route/auto_route.dart';
import 'package:database_test_project/core/consts/app_icons.dart';
import 'package:database_test_project/core/consts/getters.dart';
import 'package:database_test_project/presentations/widgets/contacts_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/consts/app_colors.dart';
import '../../../core/consts/app_text_styles.dart';

@RoutePage()
class DetailedContactsScreen extends StatelessWidget {
  final String name;
  final String userName;
  final String appbarName;
  final String email;
  final String phoneNumber;
  final String website;
  final String company;
  final String address;
  const DetailedContactsScreen(
      {super.key,
      required this.name,
      required this.userName,
      required this.appbarName, required this.email, required this.phoneNumber, required this.website, required this.company, required this.address});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appbarName,
          style:
          AppTextStyles.s20w600.copyWith(color: AppColors.ffFFFFFF),
        ),
        centerTitle: true,
        backgroundColor: AppColors.ff322C54,
      ),
      backgroundColor: AppColors.ff0F0B21,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 26),
        child: Column(
          children: [
            Align(
                alignment: Alignment.center,
                child: Image.asset(AppIcons.emptyProfPic)),
            16.h,
            Text(
              name,
              style: AppTextStyles.s16w400.copyWith(color: AppColors.ffFFFFFF),
            ),
            10.h,
            Text(
              userName,
              style: AppTextStyles.s12w500.copyWith(color: AppColors.ff6C63FF),
            ),
            25.h,
            ContactsContainer(text: email,),
            11.h,
            ContactsContainer(text: phoneNumber,),
            11.h,
            ContactsContainer(text: website,),
            11.h,
            ContactsContainer(text: company,),
            11.h,
            ContactsContainer(text: address,),
          ],
        ),
      ),
    );
  }
}
