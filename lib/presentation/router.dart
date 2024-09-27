import 'package:auto_route/auto_route.dart';
import 'package:pub_dev/presentation/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: CounterRoute.page),
        AutoRoute(page: MainRoute.page),
      ];
}
