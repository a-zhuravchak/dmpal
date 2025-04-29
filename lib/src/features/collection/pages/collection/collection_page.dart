import 'package:dmpal/src/core/presentation/exception/exceptions_notification.dart';
import 'package:dmpal/src/features/collection/pages/collection/widget/collection_empty_widget.dart';
import 'package:dmpal/src/features/profile/widget/pill_user_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/collection_bloc.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CollectionBloc(),
      child: BlocListener<CollectionBloc, CollectionState>(
        listener: (BuildContext context, CollectionState state) {
          if (state is CollectionError) {
            state.exception.display(context);
          }
        },
        child: SafeArea(
          child: Scaffold(
            body: BlocBuilder<CollectionBloc, CollectionState>(
              builder: (context, state) {
                if (state is CollectionLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state.collection.isEmpty) {
                  return const Padding(padding: EdgeInsets.symmetric(horizontal: 20.0), child: CollectionEmptyWidget());
                }
                return Container();
              },
            ),
            appBar: AppBar(
              actions: const [PillIUserWidget()],
            ),
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
