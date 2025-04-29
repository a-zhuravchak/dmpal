import 'package:go_router/go_router.dart';

import '../collection/routing.dart' as collection;
import '../plays/routing.dart' as plays;
import 'bottom_bar.dart';

RouteBase createShellRoute({required GoRouterRedirect redirect}) {
  return StatefulShellRoute.indexedStack(
    builder: (context, state, navigationShell) {
      return RootBottomBar(navigationShell: navigationShell);
    },
    branches: [
      StatefulShellBranch(routes: collection.createRoutesForShell()),
      StatefulShellBranch(routes: plays.createRoutesForShell()),
    ],
    redirect: redirect,
  );
}
