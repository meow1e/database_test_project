import 'package:auto_route/auto_route.dart';
import 'package:database_test_project/core/consts/app_colors.dart';
import 'package:database_test_project/core/consts/app_icons.dart';
import 'package:database_test_project/core/consts/app_text_styles.dart';
import 'package:database_test_project/core/router/app_router.dart';
import 'package:database_test_project/presentations/user_ui/gallery/gallery_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(routes: const [
      NewsRoute(),
      GalleryRoute(),
      ContactsRoute(),
      CheckRoute(),
    ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [AppColors.ff322C54,AppColors.ff231D49])
            ),
            height: kToolbarHeight + 5  ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(child: Column(
                  children: [
                    SvgPicture.asset(AppIcons.home),
                     Text('News',style: AppTextStyles.s14w400.copyWith(color: AppColors.ffFFFFFF ),),
                  ],
                ), onPressed: () {
                  tabsRouter.setActiveIndex(0);
                },),
                TextButton(child: Column(
                  children: [
                    SvgPicture.asset(AppIcons.gallery),
                     Text('Gallery',style: AppTextStyles.s14w400.copyWith(color: AppColors.ffFFFFFF ),),
                  ],
                ), onPressed: () {
                  tabsRouter.setActiveIndex(1);
                },),
                TextButton(child: Column(
                  children: [
                    SvgPicture.asset(AppIcons.contacts),
                     Text('Contacts',style: AppTextStyles.s14w400.copyWith(color: AppColors.ffFFFFFF ),),
                  ],
                ), onPressed: () {
                  tabsRouter.setActiveIndex(2);
                },),
                TextButton(child: Column(
                  children: [
                    SvgPicture.asset(AppIcons.check),
                     Text('Check',style: AppTextStyles.s14w400.copyWith(color: AppColors.ffFFFFFF ),),
                  ],
                ), onPressed: () {
                  tabsRouter.setActiveIndex(3);
                },),
              ],
            ),
          ),
        );
      },);
  }
}
