import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/domain/routing/service/routing_default_route_service.dart';
import '../../core/domain/routing/service/routing_redirect_service.dart';
import '../../features/bottom_bar/routing.dart' as navbar;
import '../../features/startup/pages/routing.dart' as startup;

GoRouter createRouter(
  GlobalKey<NavigatorState>? navigatorKey, {
  required RoutingRedirectReplacementService redirectService,
  required RoutingDefaultRouteService defaultRoutingService,
}) {
  final List<RouteBase> routes = [];

  routes.addAll(startup.createRoutes());
  routes.add(
    GoRoute(
      path: Navigator.defaultRouteName,
      redirect: (context, state) async {
        final route = await defaultRoutingService.defaultRouteReplacement();
        return route.routeName;
      },
    ),
  );

  routes.add(
    navbar.createShellRoute(
      redirect: (context, state) async {
        final replacement = await redirectService.decideReplacement(state);
        return replacement;
      },
    ),
  );

  return GoRouter(
    navigatorKey: navigatorKey,
    routes: routes,
    debugLogDiagnostics: true,
  );
}

extension _GoRouter on RoutingRedirectReplacementService {
  Future<String?> decideReplacement(GoRouterState state) async {
    var desiredPath = state.fullPath;
    final replacement = await getPendingRoute(desiredPath, state.extra);

    if (desiredPath == replacement?.routeName) {
      return null; // We already replaced path
    }
    final hasPath = desiredPath?.isNotEmpty == true;
    final hasReplacement = replacement != null;

    if (hasPath && hasReplacement) {
      // Store path where we wanted to go
      storeReplacement(state.matchedLocation);
    }

    if (hasReplacement) {
      return replacement.routeName;
    }

    final pendingReplacement = await obtainPendingReplacement();
    if (pendingReplacement != null) {
      // Pending redirect triggered here
      return pendingReplacement;
    }

    // No redirect
    return null;
  }
}
