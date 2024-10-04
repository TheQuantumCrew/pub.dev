// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:pub_dev/presentation/detail/detail_page.dart' as _i2;
import 'package:pub_dev/presentation/main/bookmark/bookmark_page.dart' as _i1;
import 'package:pub_dev/presentation/main/home/home_page.dart' as _i3;
import 'package:pub_dev/presentation/main/search/search_page.dart' as _i6;
import 'package:pub_dev/presentation/main/setting/setting_page.dart' as _i7;
import 'package:pub_dev/presentation/main/views/main_page.dart' as _i4;
import 'package:pub_dev/presentation/publisher/publisher_page.dart' as _i5;
import 'package:pub_dev/presentation/splash/splash_page.dart' as _i8;

/// generated route for
/// [_i1.BookmarkPage]
class BookmarkRoute extends _i9.PageRouteInfo<void> {
  const BookmarkRoute({List<_i9.PageRouteInfo>? children})
      : super(
          BookmarkRoute.name,
          initialChildren: children,
        );

  static const String name = 'BookmarkRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i1.BookmarkPage();
    },
  );
}

/// generated route for
/// [_i2.DetailPage]
class DetailRoute extends _i9.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({
    required String packageName,
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          DetailRoute.name,
          args: DetailRouteArgs(
            packageName: packageName,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailRouteArgs>();
      return _i2.DetailPage(
        packageName: args.packageName,
        key: args.key,
      );
    },
  );
}

class DetailRouteArgs {
  const DetailRouteArgs({
    required this.packageName,
    this.key,
  });

  final String packageName;

  final _i10.Key? key;

  @override
  String toString() {
    return 'DetailRouteArgs{packageName: $packageName, key: $key}';
  }
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i4.MainPage]
class MainRoute extends _i9.PageRouteInfo<void> {
  const MainRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i4.MainPage();
    },
  );
}

/// generated route for
/// [_i5.PublisherPage]
class PublisherRoute extends _i9.PageRouteInfo<PublisherRouteArgs> {
  PublisherRoute({
    required String publisherName,
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          PublisherRoute.name,
          args: PublisherRouteArgs(
            publisherName: publisherName,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PublisherRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PublisherRouteArgs>();
      return _i5.PublisherPage(
        publisherName: args.publisherName,
        key: args.key,
      );
    },
  );
}

class PublisherRouteArgs {
  const PublisherRouteArgs({
    required this.publisherName,
    this.key,
  });

  final String publisherName;

  final _i10.Key? key;

  @override
  String toString() {
    return 'PublisherRouteArgs{publisherName: $publisherName, key: $key}';
  }
}

/// generated route for
/// [_i6.SearchPage]
class SearchRoute extends _i9.PageRouteInfo<void> {
  const SearchRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.SearchPage();
    },
  );
}

/// generated route for
/// [_i7.SettingPage]
class SettingRoute extends _i9.PageRouteInfo<void> {
  const SettingRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SettingRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i7.SettingPage();
    },
  );
}

/// generated route for
/// [_i8.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i8.SplashPage();
    },
  );
}
