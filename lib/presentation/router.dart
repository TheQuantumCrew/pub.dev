import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pub_dev/presentation/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: DetailRoute.page),
        AutoRoute(page: PublisherRoute.page),
        AutoRoute(
          page: MainRoute.page,
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: SearchRoute.page),
            AutoRoute(page: BookmarkRoute.page),
            AutoRoute(page: SettingRoute.page),
          ],
        ),
      ];
}

class AppNavigationObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    log('New route pushed: ${route.settings.name}', name: 'Navigation');
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    log('Tab route visited: ${route.name}', name: 'Navigation');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    log('Tab route re-visited: ${route.name}', name: 'Navigation');
  }
}
