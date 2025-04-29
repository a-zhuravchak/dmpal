import 'package:dmpal/src/core/data/collection/services/collection_service.dart';
import 'package:dmpal/src/core/domain/collection/services/collection_service.dart';
import 'package:get_it/get_it.dart';

void setup(GetIt getIt) {
  _setupCollectionService(getIt);
}

void _setupCollectionService(GetIt getIt) {
  getIt.registerSingleton<CollectionService>(CollectionServiceImpl(bggClient: getIt()));
}
