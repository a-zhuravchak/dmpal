import 'package:dmpal/src/features/startup/pages/splash/widget/animated_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../gen/assets.gen.dart';
import 'bloc/splash_bloc.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SingleTickerProviderStateMixin {
  late final AnimationController _animationControllerLogo;

  @override
  void initState() {
    super.initState();
    _animationControllerLogo = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _animationControllerLogo.forward();
    });
  }

  @override
  void dispose() {
    _animationControllerLogo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashBloc(),
      child: BlocConsumer<SplashBloc, SplashState>(
        listener: (BuildContext context, SplashState state) {
          if (state is SplashGoRoute) {
            context.go(state.route.routeName);
          }
        },
        builder: (BuildContext context, SplashState state) {
          return buildBody(context);
        },
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    final theme = Theme.of(context);
    final bgColor = theme.colorScheme.surface;
    return ColoredBox(
      color: bgColor,
      child: Center(
        child: Stack(
          children: [
            FadeTransition(
              opacity: _animationControllerLogo,
              child: Container(),
            ),
            AnimatedLogoWidget(
              animationController: _animationControllerLogo,
              logoImage: Assets.logo.meeple,
              onEndAnimation: () => context.read<SplashBloc>().add(SplashAnimationFinishedEvent()),
            ),
          ],
        ),
      ),
    );
  }
}
