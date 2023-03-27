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

class $LanguagesGen {
  const $LanguagesGen();

  /// File path: languages/de-DE.json
  String get deDE => 'languages/de-DE.json';

  /// File path: languages/en-US.json
  String get enUS => 'languages/en-US.json';

  /// File path: languages/fr-FR.json
  String get frFR => 'languages/fr-FR.json';

  /// File path: languages/tr-TR.json
  String get trTR => 'languages/tr-TR.json';

  /// List of all assets
  List<String> get values => [deDE, enUS, frFR, trTR];
}

class $AssetsColorsGen {
  const $AssetsColorsGen();

  /// File path: assets/colors/colors.xml
  String get colors => 'assets/colors/colors.xml';

  /// List of all assets
  List<String> get values => [colors];
}

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Apercu Pro Bold Italic.otf
  String get apercuProBoldItalic => 'assets/fonts/Apercu Pro Bold Italic.otf';

  /// File path: assets/fonts/Apercu Pro Bold.otf
  String get apercuProBold => 'assets/fonts/Apercu Pro Bold.otf';

  /// File path: assets/fonts/Apercu Pro Italic.otf
  String get apercuProItalic => 'assets/fonts/Apercu Pro Italic.otf';

  /// File path: assets/fonts/Apercu Pro Light Italic.otf
  String get apercuProLightItalic => 'assets/fonts/Apercu Pro Light Italic.otf';

  /// File path: assets/fonts/Apercu Pro Light.otf
  String get apercuProLight => 'assets/fonts/Apercu Pro Light.otf';

  /// File path: assets/fonts/Apercu Pro Medium Italic.otf
  String get apercuProMediumItalic =>
      'assets/fonts/Apercu Pro Medium Italic.otf';

  /// File path: assets/fonts/Apercu Pro Medium.otf
  String get apercuProMedium => 'assets/fonts/Apercu Pro Medium.otf';

  /// File path: assets/fonts/Apercu Pro Mono.otf
  String get apercuProMono => 'assets/fonts/Apercu Pro Mono.otf';

  /// File path: assets/fonts/Apercu Pro Regular.otf
  String get apercuProRegular => 'assets/fonts/Apercu Pro Regular.otf';

  /// List of all assets
  List<String> get values => [
        apercuProBoldItalic,
        apercuProBold,
        apercuProItalic,
        apercuProLightItalic,
        apercuProLight,
        apercuProMediumItalic,
        apercuProMedium,
        apercuProMono,
        apercuProRegular
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/alert.svg
  SvgGenImage get alert => const SvgGenImage('assets/icons/alert.svg');

  /// File path: assets/icons/close.svg
  SvgGenImage get close => const SvgGenImage('assets/icons/close.svg');

  /// File path: assets/icons/left_arrow.svg
  SvgGenImage get leftArrow => const SvgGenImage('assets/icons/left_arrow.svg');

  /// File path: assets/icons/menu.svg
  SvgGenImage get menu => const SvgGenImage('assets/icons/menu.svg');

  /// File path: assets/icons/right_arrow.svg
  SvgGenImage get rightArrow =>
      const SvgGenImage('assets/icons/right_arrow.svg');

  /// File path: assets/icons/settings.svg
  SvgGenImage get settings => const SvgGenImage('assets/icons/settings.svg');

  /// File path: assets/icons/share.svg
  SvgGenImage get share => const SvgGenImage('assets/icons/share.svg');

  /// File path: assets/icons/star.svg
  SvgGenImage get star => const SvgGenImage('assets/icons/star.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [alert, close, leftArrow, menu, rightArrow, settings, share, star];
}

class Assets {
  Assets._();

  static const $AssetsColorsGen colors = $AssetsColorsGen();
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $LanguagesGen languages = $LanguagesGen();
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
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated Clip? clipBehavior,
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
