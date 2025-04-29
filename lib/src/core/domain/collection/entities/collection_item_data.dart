import 'package:bgg_flutter_client/bgg_flutter_client.dart';

/// Data class used in the app UI to represent a collection item.
class CollectionItemData {
  final int id;
  final String name;
  final int? yearPublished;
  final String? imageUrl;
  final int? numPlays;

  CollectionItemData({
    required this.id,
    required this.name,
    this.yearPublished,
    this.imageUrl,
    this.numPlays,
  });
}

extension CollectionMapper on CollectionItem {
  /// Maps [CollectionItem] to [CollectionItemData] for use in the app.
  CollectionItemData toData() {
    return CollectionItemData(
      id: objectId,
      name: name,
      yearPublished: yearPublished,
      imageUrl: imageUrl,
      numPlays: numPlays,
    );
  }
}
