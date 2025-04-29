import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../../../gen/assets.gen.dart';

abstract class _Constants {
  static const double heightBox = 326;
  static const double widthBox = 102;
  static const double diameterSegmentedLogo = widthBox;
  static const double radiusSegmentedLogo = diameterSegmentedLogo / 2;

  static const double offsetSegment4 = 224;
  static const double offsetSegment3 = 112;
  static const double offsetSegment2 = 112;
  static const double offsetSegment1 = 224;
  static const double beginOffsetSegments = 0;

  static const double endOffsetBox = 50;
  static const double beginOffsetBox = 0;

  static const Curve curveSegment4 = Interval(segment4IntervalStart, segment4IntervalEnd);
  static const Curve curveSegment3 = Interval(segment3IntervalStart, segment3IntervalEnd);
  static const Curve curveSegment2 = Interval(segment2IntervalStart, segment2IntervalEnd);
  static const Curve curveSegment1 = Interval(segment1IntervalStart, segment1IntervalEnd);

  static const double segment4IntervalStart = 0.55;
  static const double segment4IntervalEnd = 1;

  static const double segment3IntervalStart = 0.45;
  static const double segment3IntervalEnd = 1;

  static const double segment2IntervalStart = 0.35;
  static const double segment2IntervalEnd = 1;

  static const double segment1IntervalStart = 0.25;
  static const double segment1IntervalEnd = 1;

  static const Curve curveOffsetBox = Interval(offsetBoxIntervalStart, offsetBoxIntervalEnd);

  static const double offsetBoxIntervalStart = 0;
  static const double offsetBoxIntervalEnd = 0.2;

  static double get logoDiameter => 192;

  static Duration get animationDuration => const Duration(milliseconds: 1000);

  static Duration get durationBeforeAction => const Duration(milliseconds: 200);
}

class AnimatedLogoWidget extends StatefulWidget {
  const AnimatedLogoWidget({
    required this.animationController,
    required this.onEndAnimation,
    required this.logoImage,
    super.key,
  });

  final AnimationController animationController;
  final VoidCallback onEndAnimation;
  final SvgGenImage logoImage;

  @override
  State<AnimatedLogoWidget> createState() => _AnimatedLogoWidgetState();
}

class _AnimatedLogoWidgetState extends State<AnimatedLogoWidget> with TickerProviderStateMixin {
  late final Animation<double> _animationOffsetSegment4;
  late final Animation<double> _animationOffsetSegment3;
  late final Animation<double> _animationOffsetSegment2;
  late final Animation<double> _animationOffsetSegment1;
  late final Animation<double> _animationOffsetBox;
  late final Animation<double> _animationSizeLogo;

  AnimationController? _animationControllerSegments;

  AnimationController get _animationControllerLogo => widget.animationController;

  @override
  void initState() {
    super.initState();
    if (mounted) {
      createAnimationControllers();
    }
  }

  @override
  void dispose() {
    _animationControllerSegments?.dispose();
    super.dispose();
  }

  void createAnimationControllers() {
    final controller = AnimationController(
      vsync: this,
      duration: _Constants.animationDuration,
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Future.delayed(_Constants.durationBeforeAction, widget.onEndAnimation);
        }
      });
    _animationControllerSegments = controller;

    _animationOffsetSegment4 = Tween<double>(
      begin: _Constants.beginOffsetSegments,
      end: _Constants.offsetSegment4,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: _Constants.curveSegment4,
      ),
    );

    _animationOffsetSegment3 = Tween<double>(
      begin: _Constants.beginOffsetSegments,
      end: _Constants.offsetSegment3,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: _Constants.curveSegment3,
      ),
    );

    _animationOffsetSegment2 = Tween<double>(
      begin: _Constants.beginOffsetSegments,
      end: _Constants.offsetSegment2,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: _Constants.curveSegment2,
      ),
    );

    _animationOffsetSegment1 = Tween<double>(
      begin: _Constants.beginOffsetSegments,
      end: _Constants.offsetSegment1,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: _Constants.curveSegment1,
      ),
    );

    _animationSizeLogo = Tween<double>(
      begin: _Constants.logoDiameter,
      end: _Constants.diameterSegmentedLogo,
    ).animate(
      CurvedAnimation(
        parent: _animationControllerLogo,
        curve: Curves.easeOutSine,
      ),
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.forward();
        }
      });

    _animationOffsetBox = Tween<double>(
      begin: _Constants.beginOffsetBox,
      end: _Constants.endOffsetBox,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: _Constants.curveOffsetBox,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          buildSegmentedLogo(size.height),
        ],
      ),
    );
  }

  Widget buildSegmentedLogo(double height) {
    final animation = _animationControllerSegments;
    if (animation == null) {
      return const SizedBox.shrink();
    }
    return AnimatedBuilder(
      animation: animation,
      builder: (context, _) {
        final bottomOffset = height / 2 - _Constants.radiusSegmentedLogo - _animationOffsetBox.value;
        final progress = animation.value; // 0.0 -> 1.0

        return Positioned(
          bottom: bottomOffset,
          child: SizedBox(
            width: _Constants.widthBox,
            height: _Constants.heightBox,
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                // Top Meeple 1
                Positioned(
                  bottom: _animationOffsetSegment4.value,
                  left: sway(progress, 10),
                  child: AnimatedOpacity(
                    duration: _Constants.durationBeforeAction,
                    opacity: calculateOpacity(progress, 0.2, 0.5), // fades between 20% and 50% progress
                    child: buildColoredMeeple(color: Colors.orange.shade300),
                  ),
                ),
                // Top Meeple 2
                Positioned(
                  bottom: _animationOffsetSegment3.value,
                  left: sway(progress + 0.2, 8),
                  child: AnimatedOpacity(
                    duration: _Constants.durationBeforeAction,
                    opacity: calculateOpacity(progress, 0.25, 0.55),
                    child: buildColoredMeeple(color: Colors.deepOrange.shade600),
                  ),
                ),
                // Bottom Meeple 1
                Positioned(
                  bottom: -_animationOffsetSegment2.value,
                  left: sway(progress + 0.4, 8),
                  child: AnimatedOpacity(
                    duration: _Constants.durationBeforeAction,
                    opacity: calculateOpacity(progress, 0.3, 0.6),
                    child: buildColoredMeeple(color: Colors.deepOrange.shade600),
                  ),
                ),
                // Bottom Meeple 2
                Positioned(
                  bottom: -_animationOffsetSegment1.value,
                  left: sway(progress + 0.6, 10),
                  child: AnimatedOpacity(
                    duration: _Constants.durationBeforeAction,
                    opacity: calculateOpacity(progress, 0.35, 0.65),
                    child: buildColoredMeeple(color: Colors.orange.shade300),
                  ),
                ),
                // Center Meeple (ALWAYS FULLY VISIBLE)
                Positioned(
                  bottom: 0,
                  left: sway(progress + 0.8, 6),
                  child: buildColoredMeeple(color: Colors.deepOrange.shade800),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  double sway(double progress, double intensity) {
    return intensity * (sin(progress * 2 * pi));
  }

  double calculateOpacity(double progress, double startFade, double endFade) {
    if (progress <= startFade) return 0;
    if (progress >= endFade) return 1;
    return (progress - startFade) / (endFade - startFade);
  }

  Widget buildColoredMeeple({required Color color}) {
    return widget.logoImage.svg(
      width: _Constants.widthBox,
      height: _Constants.widthBox,
      fit: BoxFit.contain,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
    );
  }
}
