import 'package:bgg_flutter_client/bgg_flutter_client.dart';
import 'package:dmpal/src/core/domain/collection/entities/collection_item_data.dart';
import 'package:dmpal/src/core/domain/collection/services/collection_service.dart';

class CollectionServiceImpl implements CollectionService {
  CollectionServiceImpl({required this.bggClient});

  final BggClient bggClient;

  Future<List<CollectionItemData>> getUserCollection(final String userName) async {
    final bggCollection = await bggClient.getCollection(userName: userName);
    final List<CollectionItemData> items = bggCollection.items.map((item) => item.toData()).toList();

    return items;
  }
}
