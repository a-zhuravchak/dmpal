/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsLogoGen {
  const $AssetsLogoGen();

  /// File path: assets/logo/meeple.svg
  SvgGenImage get meeple => const SvgGenImage('assets/logo/meeple.svg');

  /// List of all assets
  List<SvgGenImage> get values => [meeple];
}

class $AssetsNotificationGen {
  const $AssetsNotificationGen();

  /// File path: assets/notification/icon_notification_error.svg
  SvgGenImage get iconNotificationError =>
      const SvgGenImage('assets/notification/icon_notification_error.svg');

  /// File path: assets/notification/icon_notification_info.svg
  SvgGenImage get iconNotificationInfo =>
      const SvgGenImage('assets/notification/icon_notification_info.svg');

  /// File path: assets/notification/icon_notification_success.svg
  SvgGenImage get iconNotificationSuccess =>
      const SvgGenImage('assets/notification/icon_notification_success.svg');

  /// File path: assets/notification/icon_notification_warning.svg
  SvgGenImage get iconNotificationWarning =>
      const SvgGenImage('assets/notification/icon_notification_warning.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    iconNotificationError,
    iconNotificationInfo,
    iconNotificationSuccess,
    iconNotificationWarning,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsLogoGen logo = $AssetsLogoGen();
  static const $AssetsNotificationGen notification = $AssetsNotificationGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}}) : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(_assetName, assetBundle: bundle, packageName: package);
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ?? (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
