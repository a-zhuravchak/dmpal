part of 'collection_bloc.dart';

@immutable
sealed class CollectionState {
  final List<CollectionItemData> collection;

  const CollectionState({required this.collection});
}

final class CollectionInitial extends CollectionState {
  const CollectionInitial({super.collection = const <CollectionItemData>[]});
}

final class CollectionLoading extends CollectionState {
  const CollectionLoading({super.collection = const <CollectionItemData>[]});
}

final class CollectionReady extends CollectionState {
  const CollectionReady({required super.collection});
}

final class CollectionError extends CollectionState {
  const CollectionError(this.exception, {required super.collection});

  final Exception exception;
}
