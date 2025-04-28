import 'package:bgg_flutter_client/bgg_flutter_client.dart';
import 'package:dmpal/src/app/di/di.dart';
import 'package:dmpal/src/core/domain/collection/entities/collection_item_data.dart';
import 'package:dmpal/src/core/domain/collection/services/collection_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'collection_event.dart';
part 'collection_state.dart';

class CollectionBloc extends Bloc<CollectionEvent, CollectionState> {
  CollectionBloc() : super(const CollectionInitial()) {
    on<GetCollectionEvent>((event, emit) async {
      emit(const CollectionLoading());
      try {
        final userCollection = await _collectionService.getUserCollection('gr_hds');
        emit(CollectionReady(collection: userCollection));
      } on BggException catch (e) {
        emit(CollectionError(e, collection: const []));
      } catch (e) {
        emit(CollectionError(Exception(), collection: const []));
      }
    });

    add(GetCollectionEvent());
  }

  final CollectionService _collectionService = getIt();
}
