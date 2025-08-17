import 'dart:ui';

abstract class AppColors {
  static final light = _LightColors();
  static final extra = _ExtraColors();
}

class _LightColors {
  final primaryColor = const Color(0xFF0d0d0d);
  final backgroundColor = const Color(0xFFEAE8FF);
  final activityColor = const Color(0xFFE9EFFF);
  final practiceQuestionColor = const Color(0xFFD81B60);
}

class _ExtraColors {
  final Color orange = const Color(0xFFFF9F41);
}
