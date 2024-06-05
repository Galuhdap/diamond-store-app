/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/LOGOO.svg
  SvgGenImage get logoo => const SvgGenImage('assets/icons/LOGOO.svg');

  /// File path: assets/icons/Lock-icon.svg
  SvgGenImage get lockIcon => const SvgGenImage('assets/icons/Lock-icon.svg');

  /// File path: assets/icons/card-credit.svg
  SvgGenImage get cardCredit =>
      const SvgGenImage('assets/icons/card-credit.svg');

  /// File path: assets/icons/dana.svg
  SvgGenImage get dana => const SvgGenImage('assets/icons/dana.svg');

  /// File path: assets/icons/google.svg
  SvgGenImage get google => const SvgGenImage('assets/icons/google.svg');

  /// File path: assets/icons/gopay.svg
  SvgGenImage get gopay => const SvgGenImage('assets/icons/gopay.svg');

  /// File path: assets/icons/history.svg
  SvgGenImage get history => const SvgGenImage('assets/icons/history.svg');

  /// File path: assets/icons/homes.svg
  SvgGenImage get homes => const SvgGenImage('assets/icons/homes.svg');

  /// File path: assets/icons/instagram.svg
  SvgGenImage get instagram => const SvgGenImage('assets/icons/instagram.svg');

  /// File path: assets/icons/link-aja.svg
  SvgGenImage get linkAja => const SvgGenImage('assets/icons/link-aja.svg');

  /// File path: assets/icons/logo.svg
  SvgGenImage get logo => const SvgGenImage('assets/icons/logo.svg');

  /// File path: assets/icons/mail.svg
  SvgGenImage get mail => const SvgGenImage('assets/icons/mail.svg');

  /// File path: assets/icons/phone.svg
  SvgGenImage get phone => const SvgGenImage('assets/icons/phone.svg');

  /// File path: assets/icons/profiles.svg
  SvgGenImage get profiles => const SvgGenImage('assets/icons/profiles.svg');

  /// File path: assets/icons/qris.svg
  SvgGenImage get qris => const SvgGenImage('assets/icons/qris.svg');

  /// File path: assets/icons/search.svg
  SvgGenImage get search => const SvgGenImage('assets/icons/search.svg');

  /// File path: assets/icons/shoppe-pay.svg
  SvgGenImage get shoppePay => const SvgGenImage('assets/icons/shoppe-pay.svg');

  /// File path: assets/icons/user.svg
  SvgGenImage get user => const SvgGenImage('assets/icons/user.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        logoo,
        lockIcon,
        cardCredit,
        dana,
        google,
        gopay,
        history,
        homes,
        instagram,
        linkAja,
        logo,
        mail,
        phone,
        profiles,
        qris,
        search,
        shoppePay,
        user
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Bg.png
  AssetGenImage get bg => const AssetGenImage('assets/images/Bg.png');

  /// File path: assets/images/banner1.jpg
  AssetGenImage get banner1 => const AssetGenImage('assets/images/banner1.jpg');

  /// File path: assets/images/banner2.jpg
  AssetGenImage get banner2 => const AssetGenImage('assets/images/banner2.jpg');

  /// File path: assets/images/banner3.jpeg
  AssetGenImage get banner3 =>
      const AssetGenImage('assets/images/banner3.jpeg');

  /// File path: assets/images/dana.png
  AssetGenImage get dana => const AssetGenImage('assets/images/dana.png');

  /// File path: assets/images/gopay.png
  AssetGenImage get gopay => const AssetGenImage('assets/images/gopay.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/mobile.png
  AssetGenImage get mobile => const AssetGenImage('assets/images/mobile.png');

  /// File path: assets/images/shopee-pay.png
  AssetGenImage get shopeePay =>
      const AssetGenImage('assets/images/shopee-pay.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [bg, banner1, banner2, banner3, dana, gopay, logo, mobile, shopeePay];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
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
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
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
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
