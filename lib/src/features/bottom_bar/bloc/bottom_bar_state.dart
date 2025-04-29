part of 'bottom_bar_bloc.dart';

@immutable
sealed class BottomBarState {
  const BottomBarState();
}

final class BottomBarInitial extends BottomBarState {
  const BottomBarInitial();
}

final class BottomBarPushRoute extends BottomBarState {
  const BottomBarPushRoute({required this.route});

  final AppRoute route;
}
