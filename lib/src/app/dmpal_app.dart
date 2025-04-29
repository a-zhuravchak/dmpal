import 'package:dmpal/src/app/di/di.dart';
import 'package:dmpal/src/app/router/app_router.dart';
import 'package:dmpal/src/app/theme/util.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BGTrackerApp extends StatefulWidget {
  const BGTrackerApp({
    super.key,
    required this.navigatorKey,
  });

  final GlobalKey<NavigatorState> navigatorKey;

  @override
  State<BGTrackerApp> createState() => _BGTrackerAppState();
}

class _BGTrackerAppState extends State<BGTrackerApp> {
  late GoRouter router;

  @override
  void initState() {
    super.initState();
    router = createRouter(
      widget.navigatorKey,
      redirectService: getIt(),
      defaultRoutingService: getIt(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'BG Tracker',
      theme: createAppTheme(context),
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
    );
  }
}
