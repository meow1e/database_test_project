// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CheckEmptyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CheckEmptyScreen(),
      );
    },
    CheckRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CheckScreen(),
      );
    },
    ContactsEmptyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ContactsEmptyScreen(),
      );
    },
    ContactsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ContactsScreen(),
      );
    },
    DetailedContactsRoute.name: (routeData) {
      final args = routeData.argsAs<DetailedContactsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DetailedContactsScreen(
          key: args.key,
          name: args.name,
          userName: args.userName,
          appbarName: args.appbarName,
          email: args.email,
          phoneNumber: args.phoneNumber,
          website: args.website,
          company: args.company,
          address: args.address,
        ),
      );
    },
    DetailedGalleryRoute.name: (routeData) {
      final args = routeData.argsAs<DetailedGalleryRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DetailedGalleryScreen(
          key: args.key,
          detailedImage: args.detailedImage,
        ),
      );
    },
    DetailedNewsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DetailedNewsScreen(),
      );
    },
    GalleryEmptyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GalleryEmptyScreen(),
      );
    },
    GalleryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GalleryScreen(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainScreen(),
      );
    },
    NewsEmptyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsEmptyScreen(),
      );
    },
    NewsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsScreen(),
      );
    },
  };
}

/// generated route for
/// [CheckEmptyScreen]
class CheckEmptyRoute extends PageRouteInfo<void> {
  const CheckEmptyRoute({List<PageRouteInfo>? children})
      : super(
          CheckEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'CheckEmptyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CheckScreen]
class CheckRoute extends PageRouteInfo<void> {
  const CheckRoute({List<PageRouteInfo>? children})
      : super(
          CheckRoute.name,
          initialChildren: children,
        );

  static const String name = 'CheckRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ContactsEmptyScreen]
class ContactsEmptyRoute extends PageRouteInfo<void> {
  const ContactsEmptyRoute({List<PageRouteInfo>? children})
      : super(
          ContactsEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactsEmptyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ContactsScreen]
class ContactsRoute extends PageRouteInfo<void> {
  const ContactsRoute({List<PageRouteInfo>? children})
      : super(
          ContactsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DetailedContactsScreen]
class DetailedContactsRoute extends PageRouteInfo<DetailedContactsRouteArgs> {
  DetailedContactsRoute({
    Key? key,
    required String name,
    required String userName,
    required String appbarName,
    required String email,
    required String phoneNumber,
    required String website,
    required String company,
    required String address,
    List<PageRouteInfo>? children,
  }) : super(
          DetailedContactsRoute.name,
          args: DetailedContactsRouteArgs(
            key: key,
            name: name,
            userName: userName,
            appbarName: appbarName,
            email: email,
            phoneNumber: phoneNumber,
            website: website,
            company: company,
            address: address,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailedContactsRoute';

  static const PageInfo<DetailedContactsRouteArgs> page =
      PageInfo<DetailedContactsRouteArgs>(name);
}

class DetailedContactsRouteArgs {
  const DetailedContactsRouteArgs({
    this.key,
    required this.name,
    required this.userName,
    required this.appbarName,
    required this.email,
    required this.phoneNumber,
    required this.website,
    required this.company,
    required this.address,
  });

  final Key? key;

  final String name;

  final String userName;

  final String appbarName;

  final String email;

  final String phoneNumber;

  final String website;

  final String company;

  final String address;

  @override
  String toString() {
    return 'DetailedContactsRouteArgs{key: $key, name: $name, userName: $userName, appbarName: $appbarName, email: $email, phoneNumber: $phoneNumber, website: $website, company: $company, address: $address}';
  }
}

/// generated route for
/// [DetailedGalleryScreen]
class DetailedGalleryRoute extends PageRouteInfo<DetailedGalleryRouteArgs> {
  DetailedGalleryRoute({
    Key? key,
    required String detailedImage,
    List<PageRouteInfo>? children,
  }) : super(
          DetailedGalleryRoute.name,
          args: DetailedGalleryRouteArgs(
            key: key,
            detailedImage: detailedImage,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailedGalleryRoute';

  static const PageInfo<DetailedGalleryRouteArgs> page =
      PageInfo<DetailedGalleryRouteArgs>(name);
}

class DetailedGalleryRouteArgs {
  const DetailedGalleryRouteArgs({
    this.key,
    required this.detailedImage,
  });

  final Key? key;

  final String detailedImage;

  @override
  String toString() {
    return 'DetailedGalleryRouteArgs{key: $key, detailedImage: $detailedImage}';
  }
}

/// generated route for
/// [DetailedNewsScreen]
class DetailedNewsRoute extends PageRouteInfo<void> {
  const DetailedNewsRoute({List<PageRouteInfo>? children})
      : super(
          DetailedNewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'DetailedNewsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GalleryEmptyScreen]
class GalleryEmptyRoute extends PageRouteInfo<void> {
  const GalleryEmptyRoute({List<PageRouteInfo>? children})
      : super(
          GalleryEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'GalleryEmptyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [GalleryScreen]
class GalleryRoute extends PageRouteInfo<void> {
  const GalleryRoute({List<PageRouteInfo>? children})
      : super(
          GalleryRoute.name,
          initialChildren: children,
        );

  static const String name = 'GalleryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsEmptyScreen]
class NewsEmptyRoute extends PageRouteInfo<void> {
  const NewsEmptyRoute({List<PageRouteInfo>? children})
      : super(
          NewsEmptyRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsEmptyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsScreen]
class NewsRoute extends PageRouteInfo<void> {
  const NewsRoute({List<PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
