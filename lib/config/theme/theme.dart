import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildThemeData({
  required BuildContext context,
  bool isDarkTheme = false,
}) {
  return ThemeData(
    useMaterial3: true,
    brightness: isDarkTheme ? Brightness.dark : Brightness.light,
    colorScheme: isDarkTheme ? flexSchemeDark : flexSchemeLight,
    textTheme: GoogleFonts.interTextTheme(
      isDarkTheme ? _darkTextTheme : _lightextTheme,
    ),
  );
}

TextTheme _darkTextTheme = ThemeData.dark(useMaterial3: true).textTheme;

TextTheme _lightextTheme = ThemeData.light(useMaterial3: true).textTheme;

const ColorScheme flexSchemeLight = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xff1460a5),
  onPrimary: Color(0xffffffff),
  primaryContainer: Color(0xffd3e4ff),
  onPrimaryContainer: Color(0xff001c38),
  secondary: Color(0xff545f70),
  onSecondary: Color(0xffffffff),
  secondaryContainer: Color(0xffd7e3f8),
  onSecondaryContainer: Color(0xff111c2b),
  tertiary: Color(0xff6c5677),
  onTertiary: Color(0xffffffff),
  tertiaryContainer: Color(0xfff5d9ff),
  onTertiaryContainer: Color(0xff261431),
  error: Color(0xffba1a1a),
  onError: Color(0xffffffff),
  errorContainer: Color(0xffffdad6),
  onErrorContainer: Color(0xff410002),
  background: Color(0xfffdfcff),
  onBackground: Color(0xff1a1c1e),
  surface: Color(0xfffdfcff),
  onSurface: Color(0xff1a1c1e),
  surfaceVariant: Color(0xffdfe2eb),
  onSurfaceVariant: Color(0xff43474e),
  outline: Color(0xff73777f),
  outlineVariant: Color(0xffc3c6cf),
  shadow: Color(0xff000000),
  scrim: Color(0xff000000),
  inverseSurface: Color(0xff2f3033),
  onInverseSurface: Color(0xfff1f0f4),
  inversePrimary: Color(0xffa2c9ff),
  surfaceTint: Color(0xff1460a5),
);

const ColorScheme flexSchemeDark = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xffa0c9ff),
  onPrimary: Color(0xff003259),
  primaryContainer: Color(0xff00497f),
  onPrimaryContainer: Color(0xffd2e4ff),
  secondary: Color(0xffbbc7db),
  onSecondary: Color(0xff253141),
  secondaryContainer: Color(0xff3c4858),
  onSecondaryContainer: Color(0xffd7e3f8),
  tertiary: Color(0xffd7bde4),
  onTertiary: Color(0xff3b2947),
  tertiaryContainer: Color(0xff533f5f),
  onTertiaryContainer: Color(0xfff3daff),
  error: Color(0xffffb4ab),
  onError: Color(0xff690005),
  errorContainer: Color(0xff93000a),
  onErrorContainer: Color(0xffffb4ab),
  background: Color(0xff1a1c1e),
  onBackground: Color(0xffe3e2e6),
  surface: Color(0xff1a1c1e),
  onSurface: Color(0xffe3e2e6),
  surfaceVariant: Color(0xff43474e),
  onSurfaceVariant: Color(0xffc3c6cf),
  outline: Color(0xff8d9199),
  outlineVariant: Color(0xff43474e),
  shadow: Color(0xff000000),
  scrim: Color(0xff000000),
  inverseSurface: Color(0xffe3e2e6),
  onInverseSurface: Color(0xff2f3033),
  inversePrimary: Color(0xff0b61a4),
  surfaceTint: Color(0xffa0c9ff),
);
