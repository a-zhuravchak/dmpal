import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'di_routing.dart' as routing;

final getIt = GetIt.asNewInstance();

Future<void> setupDi(GlobalKey<NavigatorState> navigatorKey) async {
  routing.setup(getIt);
}
