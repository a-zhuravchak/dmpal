import 'package:dmpal/src/features/startup/pages/splash/splash_page.dart';
import 'package:go_router/go_router.dart';

import '../keys.dart';
import '../startup.dart';

List<RouteBase> createRoutes() {
  final List<RouteBase> external = [
    GoRoute(
        path: SplashStartupRoute().goRouterPath,
        pageBuilder: (context, state) {
          return const NoTransitionPage(child: SplashPage(key: StartupsKeys.splash));
        }),
  ];
  final List<RouteBase> internal = [];
  return external + internal;
}
