import 'package:auto_route/auto_route.dart';
import 'package:database_test_project/core/domain/posts/posts_cubit.dart';
import 'package:database_test_project/core/injections/injections.dart';
import 'package:database_test_project/core/router/app_router.dart';
import 'package:database_test_project/presentations/user_ui/news/news_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();

  MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
