import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'di_routing.dart' as routing;
import 'di_startup.dart' as startup;
import 'di_bgg_client.dart' as bgg;
import 'di_collection.dart' as collection;

final getIt = GetIt.asNewInstance();

Future<void> setupDi(GlobalKey<NavigatorState> navigatorKey) async {
  await startup.setup(getIt);
  routing.setup(getIt);
  bgg.setup(getIt);
  collection.setup(getIt);
}
