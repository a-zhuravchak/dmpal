import '../entities/collection_item_data.dart';

abstract class CollectionService {

  Future<List<CollectionItemData>> getUserCollection(final String userName);
}
