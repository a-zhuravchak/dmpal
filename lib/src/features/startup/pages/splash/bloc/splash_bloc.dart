import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../app/di/di.dart';
import '../../../../../core/domain/routing/entity/app_route.dart';
import '../../../../../core/domain/routing/entity/default_app_route.dart';
import '../../../../../core/domain/startup/startup_service.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashInitial()) {
    on<SplashInitEvent>((event, emit) async {
      await startupService.performStartup();
      _pendingAppRoute = DefaultAppRoute();
      _initCompleter.complete();
    });
    on<SplashAnimationFinishedEvent>((event, emit) async {
      _animationCompleter.complete();
    });
    on<SplashFinishedEvent>((event, emit) async {
      emit(SplashGoRoute(route: event.route));
    });

    Future.wait([
      _initCompleter.future,
      _animationCompleter.future,
    ]).then(
      (results) => add(SplashFinishedEvent(route: _pendingAppRoute)),
    );

    add(SplashInitEvent());
  }

  late AppRoute _pendingAppRoute;
  final StartupService startupService = getIt();

  final Completer<void> _initCompleter = Completer();
  final Completer<void> _animationCompleter = Completer();
}
