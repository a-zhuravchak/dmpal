import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'collection.dart';

List<RouteBase> createRoutesForShell() {
  final List<RouteBase> external = [
    GoRoute(
        path: CollectionInitialRoute().goRouterPath,
        pageBuilder: (context, state) {
          return const NoTransitionPage(child: Scaffold(key: CollectionKeys.collection));
        }),
  ];
  final List<RouteBase> internal = [];
  return external + internal;
}
