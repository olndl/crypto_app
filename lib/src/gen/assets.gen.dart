/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $LibGen {
  const $LibGen();

  $LibSrcGen get src => const $LibSrcGen();
}

class $LibSrcGen {
  const $LibSrcGen();

  $LibSrcAssetsGen get assets => const $LibSrcAssetsGen();
}

class $LibSrcAssetsGen {
  const $LibSrcAssetsGen();

  $LibSrcAssetsAbiGen get abi => const $LibSrcAssetsAbiGen();
  $LibSrcAssetsPngGen get png => const $LibSrcAssetsPngGen();
  $LibSrcAssetsSvgGen get svg => const $LibSrcAssetsSvgGen();
}

class $LibSrcAssetsAbiGen {
  const $LibSrcAssetsAbiGen();

  /// File path: lib/src/assets/abi/abi.json
  String get abi => 'lib/src/assets/abi/abi.json';

  /// List of all assets
  List<String> get values => [abi];
}

class $LibSrcAssetsPngGen {
  const $LibSrcAssetsPngGen();

  /// File path: lib/src/assets/png/BNB.png
  AssetGenImage get bnb => const AssetGenImage('lib/src/assets/png/BNB.png');

  /// File path: lib/src/assets/png/BTC.png
  AssetGenImage get btc => const AssetGenImage('lib/src/assets/png/BTC.png');

  /// File path: lib/src/assets/png/BUSD.png
  AssetGenImage get busd => const AssetGenImage('lib/src/assets/png/BUSD.png');

  /// File path: lib/src/assets/png/CAKE.png
  AssetGenImage get cake => const AssetGenImage('lib/src/assets/png/CAKE.png');

  /// File path: lib/src/assets/png/ETH.png
  AssetGenImage get eth => const AssetGenImage('lib/src/assets/png/ETH.png');

  /// File path: lib/src/assets/png/USD.png
  AssetGenImage get usd => const AssetGenImage('lib/src/assets/png/USD.png');

  /// File path: lib/src/assets/png/USDT.png
  AssetGenImage get usdt => const AssetGenImage('lib/src/assets/png/USDT.png');

  /// List of all assets
  List<AssetGenImage> get values => [bnb, btc, busd, cake, eth, usd, usdt];
}

class $LibSrcAssetsSvgGen {
  const $LibSrcAssetsSvgGen();

  /// File path: lib/src/assets/svg/another_pair.svg
  SvgGenImage get anotherPair =>
      const SvgGenImage('lib/src/assets/svg/another_pair.svg');

  /// File path: lib/src/assets/svg/arrow_down.svg
  SvgGenImage get arrowDown =>
      const SvgGenImage('lib/src/assets/svg/arrow_down.svg');

  /// File path: lib/src/assets/svg/icon.svg
  SvgGenImage get icon => const SvgGenImage('lib/src/assets/svg/icon.svg');

  /// File path: lib/src/assets/svg/icon_stat.svg
  SvgGenImage get iconStat =>
      const SvgGenImage('lib/src/assets/svg/icon_stat.svg');

  /// File path: lib/src/assets/svg/image_cash.svg
  SvgGenImage get imageCash =>
      const SvgGenImage('lib/src/assets/svg/image_cash.svg');

  /// File path: lib/src/assets/svg/image_coins.svg
  SvgGenImage get imageCoins =>
      const SvgGenImage('lib/src/assets/svg/image_coins.svg');

  /// File path: lib/src/assets/svg/image_hands.svg
  SvgGenImage get imageHands =>
      const SvgGenImage('lib/src/assets/svg/image_hands.svg');

  /// File path: lib/src/assets/svg/main_image.svg
  SvgGenImage get mainImage =>
      const SvgGenImage('lib/src/assets/svg/main_image.svg');

  /// File path: lib/src/assets/svg/swap_fill.svg
  SvgGenImage get swapFill =>
      const SvgGenImage('lib/src/assets/svg/swap_fill.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        anotherPair,
        arrowDown,
        icon,
        iconStat,
        imageCash,
        imageCoins,
        imageHands,
        mainImage,
        swapFill
      ];
}

class Assets {
  Assets._();

  static const $LibGen lib = $LibGen();
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

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
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
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
