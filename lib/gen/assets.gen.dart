/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.png');

  /// List of all assets
  List<AssetGenImage> get values => [splash];
}

class $AssetsL10nGen {
  const $AssetsL10nGen();

  /// File path: assets/l10n/en.json
  String get en => 'assets/l10n/en.json';

  /// File path: assets/l10n/id.json
  String get id => 'assets/l10n/id.json';

  /// List of all assets
  List<String> get values => [en, id];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/liquid-loading.json
  String get liquidLoading => 'assets/lottie/liquid-loading.json';

  /// File path: assets/lottie/notFound.json
  String get notFound => 'assets/lottie/notFound.json';

  /// File path: assets/lottie/onboard1.json
  String get onboard1 => 'assets/lottie/onboard1.json';

  /// File path: assets/lottie/onboard2.json
  String get onboard2 => 'assets/lottie/onboard2.json';

  /// File path: assets/lottie/onboard3.json
  String get onboard3 => 'assets/lottie/onboard3.json';

  /// File path: assets/lottie/under-contruction.json
  String get underContruction => 'assets/lottie/under-contruction.json';

  /// List of all assets
  List<String> get values =>
      [liquidLoading, notFound, onboard1, onboard2, onboard3, underContruction];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsL10nGen l10n = $AssetsL10nGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
