import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../presentations/main_screen.dart';
import '../../presentations/user_ui/check/check_screen.dart';
import '../../presentations/user_ui/contacts/contacts_screen.dart';
import '../../presentations/user_ui/contacts/detailed_contacts_screen.dart';
import '../../presentations/user_ui/gallery/detailed_gallery_screen.dart';
import '../../presentations/user_ui/gallery/gallery_screen.dart';
import '../../presentations/user_ui/news/detailed_news_screen.dart';
import '../../presentations/user_ui/news/news_screen.dart';

part 'app_router.gr.dart';

@RoutePage()
class NewsEmptyScreen extends AutoRouter {
  const NewsEmptyScreen({Key? key}) : super(key: key);
}

@RoutePage()
class GalleryEmptyScreen extends AutoRouter {
  const GalleryEmptyScreen({Key? key}) : super(key: key);
}

@RoutePage()
class ContactsEmptyScreen extends AutoRouter {
  const ContactsEmptyScreen({Key? key}) : super(key: key);
}

@RoutePage()
class CheckEmptyScreen extends AutoRouter {
  const CheckEmptyScreen({Key? key}) : super(key: key);
}

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainRoute.page, initial: true, children: [
          AutoRoute(
              page: NewsEmptyRoute.page, initial: true,
              children: [AutoRoute(page: NewsRoute.page, initial: true ),
              AutoRoute(page: DetailedNewsRoute.page)]),
          AutoRoute(
              page: GalleryEmptyRoute.page,
              children: [
                AutoRoute(page: GalleryRoute.page),
                AutoRoute(page: DetailedGalleryRoute.page)
              ]),
          AutoRoute(
              page: ContactsEmptyRoute.page,
              children: [AutoRoute(page: ContactsRoute.page),
                AutoRoute(page: DetailedContactsRoute.page),]),
          AutoRoute(
              page: CheckEmptyRoute.page,
              children: [AutoRoute(page: CheckRoute.page)])
        ])
      ];
}
