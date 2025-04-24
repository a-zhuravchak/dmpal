part of 'bottom_bar_bloc.dart';

@immutable
sealed class BottomBarEvent {}

class BottomBarInitEvent extends BottomBarEvent {}

class BottomBarSwitchToEvent extends BottomBarEvent {
  final int destinationIndex;

  BottomBarSwitchToEvent({required this.destinationIndex});
}
