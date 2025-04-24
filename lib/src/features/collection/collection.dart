import 'package:flutter/foundation.dart';

import '../../core/domain/routing/entity/app_route.dart';

sealed class CollectionRoute extends AppRoute {}

final class CollectionInitialRoute extends CollectionRoute {
  @override
  String get routeName => '/collection';
}

final class CollectionKeys {
  static const Key collection = Key('collection');
}
