import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

extension XTextTheme on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  TextStyle? get displayLarge => textTheme.displayLarge;
  TextStyle? get displayMedium => textTheme.displayMedium;
  TextStyle? get displaySmall => textTheme.displaySmall;
  TextStyle? get headlineLarge => textTheme.headlineLarge;
  TextStyle? get headlineMedium => textTheme.headlineMedium;
  TextStyle? get headlineSmall => textTheme.headlineSmall;
  TextStyle? get titleLarge => textTheme.titleLarge;
  TextStyle? get titleMedium => textTheme.titleMedium;
  TextStyle? get titleSmall => textTheme.titleSmall;
  TextStyle? get bodyLarge => textTheme.bodyLarge;
  TextStyle? get bodyMedium => textTheme.bodyMedium;
  TextStyle? get bodySmall => textTheme.bodySmall;
  TextStyle? get labelLarge => textTheme.labelLarge;
  TextStyle? get labelMedium => textTheme.labelMedium;
  TextStyle? get labelSmall => textTheme.labelSmall;
}

extension XAdaptiveTheme on BuildContext {
  bool get isDarkMode => AdaptiveTheme.of(this).mode == AdaptiveThemeMode.dark;

  void setDarkOrLight() {
    if (!isDarkMode) {
      AdaptiveTheme.of(this).setDark();
    } else {
      AdaptiveTheme.of(this).setLight();
    }
  }
}

extension XColorTheme on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  Color get textColor => isDarkMode ? Colors.white : Colors.grey.shade600;
  Color get shadowColor =>
      isDarkMode ? Colors.grey.shade800 : Colors.grey.shade200;
  Color get borderColor =>
      isDarkMode ? Colors.grey.shade600 : Colors.grey.shade400;
}

extension XBoxDecoration on BuildContext {
  BoxDecoration get radiusBorderDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: colorScheme.background,
        border: Border.all(
          color: borderColor,
          width: .4,
        ),
      );
}
