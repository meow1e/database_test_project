import 'package:auto_route/auto_route.dart';
import 'package:database_test_project/core/consts/app_colors.dart';
import 'package:database_test_project/core/consts/app_text_styles.dart';
import 'package:database_test_project/core/consts/getters.dart';
import 'package:database_test_project/core/domain/check/check_cubit.dart';
import 'package:database_test_project/core/injections/injections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
@RoutePage()
class CheckScreen extends StatefulWidget {
  const CheckScreen({super.key});

  @override
  State<CheckScreen> createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  List<bool> checkBoxValues = List.generate(1, (index) => false);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => getIt<CheckCubit>()..checks(),
  child: Scaffold(
      backgroundColor: AppColors.ff0F0B21,
      body: BlocBuilder<CheckCubit, CheckState>(
  builder: (context, state) {
    if (state is CheckLoading){
      return const Center(child: CircularProgressIndicator(),);
    }
    if (state is CheckSuccess) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 17),
        child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (c, i) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: CheckboxListTile(
                          title: Text(state.checkModel[i].title!, style: AppTextStyles.s16w400
                              .copyWith(color: AppColors.ffFFFFFF)),
                          value: state.checkModel[i].completed,
                          onChanged: (value) {
                            setState(() {
                              checkBoxValues[i] = value!;
                            });
                          }),
                    ),
                  ],
                ),
              ],
            ),
            separatorBuilder: (c, i) => 16.h,
            itemCount: state.checkModel.length),
      );
    }
    if (state is CheckFailure){
      return Center(
          child: Text(
            state.error,
            style:
            AppTextStyles.s14w400.copyWith(color: AppColors.ffFFFFFF),
          ));
    } else{
      return Container(
        color: Colors.red,
      );
    }
  },
),
    ),
);
  }
}
