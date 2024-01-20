import 'package:auto_route/auto_route.dart';
import 'package:database_test_project/core/consts/app_colors.dart';
import 'package:database_test_project/core/consts/app_text_styles.dart';
import 'package:database_test_project/core/consts/getters.dart';
import 'package:database_test_project/core/data/model/posts/posts_model.dart';
import 'package:database_test_project/core/domain/posts/posts_cubit.dart';
import 'package:database_test_project/core/injections/injections.dart';
import 'package:database_test_project/core/router/app_router.dart';
import 'package:database_test_project/presentations/user_ui/check/check_screen.dart';
import 'package:database_test_project/presentations/user_ui/contacts/contacts_screen.dart';
import 'package:database_test_project/presentations/widgets/custom_app_bar.dart';
import 'package:database_test_project/presentations/widgets/newsContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../../core/data/model/posts/posts_model.dart';
import '../../../core/data/model/posts/posts_model.dart';

@RoutePage()
class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PostsCubit>()..posts(),
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'News',
              style: AppTextStyles.s20w600.copyWith(
                  color: AppColors.ffFFFFFF),
            ),
            centerTitle: true,
            backgroundColor: AppColors.ff221C44,
          ),
        backgroundColor: AppColors.ff0F0B21,
        body: BlocBuilder<PostsCubit, PostsState>(
          builder: (context, state) {
            if ( state is PostsLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state is PostsSuccess){
              return ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      GestureDetector(
                        onTap: () {
                          context.router.push(const DetailedNewsRoute());
                        },
                        child: NewsContained(
                            title: state.postsModel[index].title!,
                            text: state.postsModel[index].body!),
                      ),
                  separatorBuilder: (c, i) => 6.h,
                  itemCount: state.postsModel.length);
            }
            if (state is PostsFailure){
              return Text(state.error);
            } else {
              return Container(color: Colors.red,);
            }
          },
        )
      ),
    );
  }
}
