import 'package:auto_route/auto_route.dart';
import 'package:database_test_project/core/consts/app_colors.dart';
import 'package:database_test_project/core/consts/app_text_styles.dart';
import 'package:database_test_project/core/consts/getters.dart';
import 'package:database_test_project/core/data/model/posts/posts_model.dart';
import 'package:database_test_project/core/domain/albums/albums_cubit.dart';
import 'package:database_test_project/core/domain/comments/comments_cubit.dart';
import 'package:database_test_project/core/domain/posts/posts_cubit.dart';
import 'package:database_test_project/core/injections/injections.dart';
import 'package:database_test_project/presentations/user_ui/check/check_screen.dart';
import 'package:database_test_project/presentations/user_ui/contacts/contacts_screen.dart';
import 'package:database_test_project/presentations/widgets/comment_container.dart';
import 'package:database_test_project/presentations/widgets/custom_app_bar.dart';
import 'package:database_test_project/presentations/widgets/newsContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/data/model/posts/posts_model.dart';
import '../../../core/data/model/posts/posts_model.dart';

@RoutePage()
class DetailedNewsScreen extends StatelessWidget {
  const DetailedNewsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CommentsCubit>()..comments(),
      child: Scaffold(
          appBar: AppBar(
            title: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [AppColors.ff322C54, AppColors.ff231D49])),
              child: Text(
                'News',
                style:
                    AppTextStyles.s20w600.copyWith(color: AppColors.ffFFFFFF),
              ),
            ),
            centerTitle: true,
            backgroundColor: AppColors.ff221C44,
          ),
          backgroundColor: AppColors.ff0F0B21,
          body: BlocBuilder<CommentsCubit, CommentsState>(
            builder: (context, state) {
              if (state is CommentsLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is CommentsSuccess) {
                return ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => CommentContainer(
                        title: state.commentsModel[index].name!,
                        text: state.commentsModel[index].body!),
                    separatorBuilder: (c, i) => 6.h,
                    itemCount: state.commentsModel.length);
              }
              if (state is CommentsFailure) {
                return Text(state.error);
              } else {
                return Container(
                  color: Colors.red,
                );
              }
            },
          )),
    );
  }
}
