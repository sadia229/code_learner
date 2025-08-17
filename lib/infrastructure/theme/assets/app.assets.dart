
abstract class _CommonAssets {
  static const String _assetsPath = 'assets/graphics/common';
}

class _LightIcons {
  static const String _iconsPath = 'assets/images';
  final String profilePicture = '$_iconsPath/profile_picture.png';
  final String coins = '$_iconsPath/coins.png';
  final String levelBadge = '$_iconsPath/level-badge.png';
  final String scoreBadge = '$_iconsPath/high-score.png';
  final String coinBadge = '$_iconsPath/coin.png';
  final String sliderOne = '$_iconsPath/image-one.jpg';
  final String slidertwo = '$_iconsPath/image-two.jpeg';
}


class _LightAssets extends _CommonAssets {
  static const String _assetsPath = 'assets/graphics/light';
  final icons = _LightIcons();
}

abstract class AppAssets {
  static final light = _LightAssets();
}
