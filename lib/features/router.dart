import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:meme_maker/features/splash/view/splash_page.dart';

part 'router.g.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

final goRouterProvider = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: SplashRoute().location,
  errorBuilder: (context, state) => const Scaffold(),
  routes: $appRoutes,
  debugLogDiagnostics: true,
);

@TypedGoRoute<SplashRoute>(path: '/')
class SplashRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashPage();
  }
}
