/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $ConfigGen {
  const $ConfigGen();

  /// File path: config/dev.json
  String get dev => 'config/dev.json';
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_bottle.svg
  SvgGenImage get icBottle => const SvgGenImage('assets/icons/ic_bottle.svg');

  /// File path: assets/icons/ic_closeEye.svg
  SvgGenImage get icCloseEye =>
      const SvgGenImage('assets/icons/ic_closeEye.svg');

  /// File path: assets/icons/ic_freeDelivery.svg
  SvgGenImage get icFreeDelivery =>
      const SvgGenImage('assets/icons/ic_freeDelivery.svg');

  /// File path: assets/icons/ic_general.webp
  AssetGenImage get icGeneral =>
      const AssetGenImage('assets/icons/ic_general.webp');

  /// File path: assets/icons/ic_geolocation.svg
  SvgGenImage get icGeolocation =>
      const SvgGenImage('assets/icons/ic_geolocation.svg');

  /// File path: assets/icons/ic_heartFavorite.svg
  SvgGenImage get icHeartFavorite =>
      const SvgGenImage('assets/icons/ic_heartFavorite.svg');

  /// File path: assets/icons/ic_icon.svg
  SvgGenImage get icIcon => const SvgGenImage('assets/icons/ic_icon.svg');

  /// File path: assets/icons/ic_leave.svg
  SvgGenImage get icLeave => const SvgGenImage('assets/icons/ic_leave.svg');

  /// File path: assets/icons/ic_ok.svg
  SvgGenImage get icOk => const SvgGenImage('assets/icons/ic_ok.svg');

  /// File path: assets/icons/ic_openEye.svg
  SvgGenImage get icOpenEye => const SvgGenImage('assets/icons/ic_openEye.svg');

  /// File path: assets/icons/ic_ok.svg
  SvgGenImage get icOk => const SvgGenImage('assets/icons/ic_ok.svg');

  /// File path: assets/icons/ic_person.svg
  SvgGenImage get icPerson => const SvgGenImage('assets/icons/ic_person.svg');

  /// File path: assets/icons/ic_sales.svg
  SvgGenImage get icSales => const SvgGenImage('assets/icons/ic_sales.svg');

  /// File path: assets/icons/ic_save.svg
  SvgGenImage get icSave => const SvgGenImage('assets/icons/ic_save.svg');

  /// File path: assets/icons/ic_search.svg
  SvgGenImage get icSearch => const SvgGenImage('assets/icons/ic_search.svg');

  /// File path: assets/icons/ic_shopingBag.svg
  SvgGenImage get icShopingBag =>
      const SvgGenImage('assets/icons/ic_shopingBag.svg');
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/logotip.png
  AssetGenImage get logotip => const AssetGenImage('assets/images/logotip.png');
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $ConfigGen config = $ConfigGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
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
}
