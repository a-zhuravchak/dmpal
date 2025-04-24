import 'package:dmpal/src/app/di/di.dart';
import 'package:dmpal/src/app/dmpal_app.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  WidgetsFlutterBinding.ensureInitialized();
  await setupDi(navigatorKey);
  runApp(
    BGTrackerApp(navigatorKey: navigatorKey),
  );
}
