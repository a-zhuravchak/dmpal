import 'package:dmpal/src/features/bottom_bar/widget/bottom_bar_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'bloc/bottom_bar_bloc.dart';

class RootBottomBar extends StatelessWidget {
  const RootBottomBar({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomBarBloc(),
      child: BlocConsumer<BottomBarBloc, BottomBarState>(
        listener: (BuildContext context, BottomBarState state) {
          if (state is BottomBarPushRoute) {
            context.push(state.route.routeName);
          }
        },
        builder: (context, state) {
          return BottomBarBody(
            navigationShell: navigationShell,
          );
        },
      ),
    );
  }
}
