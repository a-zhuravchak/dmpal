import 'package:bgg_flutter_client/bgg_flutter_client.dart';
import 'package:get_it/get_it.dart';

void setup(GetIt getIt) {
  _setupBGGClient(getIt);
}

void _setupBGGClient(GetIt getIt) {
  getIt.registerSingleton<BggClient>(BggClient());
}
