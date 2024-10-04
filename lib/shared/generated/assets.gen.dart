/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Nunito-Black.ttf
  String get nunitoBlack => 'assets/fonts/Nunito-Black.ttf';

  /// File path: assets/fonts/Nunito-Bold.ttf
  String get nunitoBold => 'assets/fonts/Nunito-Bold.ttf';

  /// File path: assets/fonts/Nunito-ExtraBold.ttf
  String get nunitoExtraBold => 'assets/fonts/Nunito-ExtraBold.ttf';

  /// File path: assets/fonts/Nunito-ExtraLight.ttf
  String get nunitoExtraLight => 'assets/fonts/Nunito-ExtraLight.ttf';

  /// File path: assets/fonts/Nunito-Italic.ttf
  String get nunitoItalic => 'assets/fonts/Nunito-Italic.ttf';

  /// File path: assets/fonts/Nunito-Light.ttf
  String get nunitoLight => 'assets/fonts/Nunito-Light.ttf';

  /// File path: assets/fonts/Nunito-Medium.ttf
  String get nunitoMedium => 'assets/fonts/Nunito-Medium.ttf';

  /// File path: assets/fonts/Nunito-Regular.ttf
  String get nunitoRegular => 'assets/fonts/Nunito-Regular.ttf';

  /// File path: assets/fonts/Nunito-SemiBold.ttf
  String get nunitoSemiBold => 'assets/fonts/Nunito-SemiBold.ttf';

  /// List of all assets
  List<String> get values => [
        nunitoBlack,
        nunitoBold,
        nunitoExtraBold,
        nunitoExtraLight,
        nunitoItalic,
        nunitoLight,
        nunitoMedium,
        nunitoRegular,
        nunitoSemiBold
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_dart_green.png
  AssetGenImage get icDartGreen =>
      const AssetGenImage('assets/icons/ic_dart_green.png');

  /// File path: assets/icons/ic_dart_original.png
  AssetGenImage get icDartOriginal =>
      const AssetGenImage('assets/icons/ic_dart_original.png');

  /// File path: assets/icons/ic_flutter.png
  AssetGenImage get icFlutter =>
      const AssetGenImage('assets/icons/ic_flutter.png');

  /// List of all assets
  List<AssetGenImage> get values => [icDartGreen, icDartOriginal, icFlutter];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/ic_launcher_round.png
  AssetGenImage get icLauncherRound =>
      const AssetGenImage('assets/images/ic_launcher_round.png');

  /// List of all assets
  List<AssetGenImage> get values => [icLauncherRound];
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
