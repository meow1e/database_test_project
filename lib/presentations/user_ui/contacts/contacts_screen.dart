import 'package:auto_route/auto_route.dart';
import 'package:database_test_project/core/consts/app_colors.dart';
import 'package:database_test_project/core/consts/app_icons.dart';
import 'package:database_test_project/core/consts/app_text_styles.dart';
import 'package:database_test_project/core/consts/getters.dart';
import 'package:database_test_project/core/domain/users/users_cubit.dart';
import 'package:database_test_project/core/injections/injections.dart';
import 'package:database_test_project/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UsersCubit>()..users(),
      child: Scaffold(
          backgroundColor: AppColors.ff0F0B21,
          body: BlocBuilder<UsersCubit, UsersState>(
            builder: (context, state) {
              if (state is UsersLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is UsersSuccess) {
                return ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (c, i) => Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: GestureDetector(
                            onTap: () {
                              context.router.push(DetailedContactsRoute(
                                name: state.usersModel[i].name,
                                userName: state.usersModel[i].username!,
                                appbarName: state.usersModel[i].name,
                                email: state.usersModel[i].email!,
                                phoneNumber: state.usersModel[i].phone!,
                                website: state.usersModel[i].website!,
                                company: 'google.com',
                                address: 'Pushkin st.,15',
                              ));
                            },
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: SvgPicture.asset(AppIcons.profPic),
                                ),
                                Text(
                                  state.usersModel[i].name,
                                  style: AppTextStyles.s16w400
                                      .copyWith(color: AppColors.ffFFFFFF),
                                )
                              ],
                            ),
                          ),
                        ),
                    separatorBuilder: (c, i) => 18.h,
                    itemCount: state.usersModel.length);
              }
              if (state is UsersFailure) {
                return Center(
                    child: Text(
                  state.error,
                  style:
                      AppTextStyles.s14w400.copyWith(color: AppColors.ffFFFFFF),
                ));
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
