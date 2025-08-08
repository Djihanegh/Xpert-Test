import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTheme = _getTheme(brightness: Brightness.light);

const _primary = Colors.indigo;
const _secondary = Colors.amber;

const _background = Color(0xFF0B0F2B);
const _lightest = Colors.white;
const _darkest = Colors.black;
const _darker = Colors.black87;
const _divider = Colors.grey;
const _disabled = Colors.grey;
const _red = Colors.red;

const _green = Color(0xFF75DFA7);

final _lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  // Primary
  primary: _primary,
  onPrimary: _lightest,

  // Secondary
  secondary: _secondary,
  onSecondary: _lightest,
  // Error
  error: _red,
  onError: _lightest,
  // Background
  surface: _background,
  onSurface: _darkest,

  // Outline
  outline: _divider,
);

ThemeData _getTheme({required Brightness brightness}) {
  final colorScheme = _lightColorScheme;

  final textTheme = _getTextTheme(colorScheme);
  final primaryTextTheme = textTheme.apply(
    displayColor: colorScheme.onPrimary,
    bodyColor: colorScheme.onPrimary,
  );

  final buttonShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(11),
  );
  const buttonPadding = EdgeInsets.all(16);
  final buttonTextStyle = textTheme.titleSmall;

  return ThemeData(
    useMaterial3: true,
    brightness: brightness,
    colorScheme: colorScheme,
    textTheme: textTheme,
    primaryTextTheme: primaryTextTheme,
    scaffoldBackgroundColor: colorScheme.surface,
    disabledColor: _disabled,
    dividerTheme: const DividerThemeData(
      color: _divider,
      space: 1,
      thickness: 1,
    ),
    chipTheme: ChipThemeData(
      labelStyle: textTheme.labelSmall!.copyWith(
        overflow: TextOverflow.visible,
      ),
      padding: EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(20),
      ),
      avatarBoxConstraints: BoxConstraints.loose(Size(20, 20)),
      backgroundColor: Colors.grey,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: buttonShape,
        padding: buttonPadding,
        backgroundColor: colorScheme.onPrimary,
        foregroundColor: colorScheme.onSurface,
        minimumSize: const Size(double.infinity, 45),
        textStyle: GoogleFonts.interTight(color: Color(0xFF070707), fontWeight: FontWeight.w500, fontSize: 18),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        shape: buttonShape,
        padding: buttonPadding,
        foregroundColor: colorScheme.primary,
        textStyle: buttonTextStyle,
      ),
    ),
  );
}

TextTheme _getTextTheme(ColorScheme colorScheme) {
  final headlineColor = _darker;
  const headlineWeight = FontWeight.w900;
  const headlineHeight = 1.2;
  const headlineLetterSpacing = 2.5;

  final titleColor = _lightest;
  const titleWeight = FontWeight.bold;
  const titleHeight = 1.2;
  const titleLetterSpacing = -0.96;

  final bodyColor = _darker;
  const bodyWeight = FontWeight.normal;
  const bodyHeight = 1.5;
  const bodyLetterSpacing = 0.0;

  final labelColor = titleColor;

  final textTheme = TextTheme(
    // Headline
    headlineLarge: TextStyle(
      fontSize: 24,
      height: headlineHeight,
      letterSpacing: headlineLetterSpacing,
      color: headlineColor,
      fontWeight: headlineWeight,
    ),
    headlineMedium: TextStyle(
      fontSize: 20,
      height: headlineHeight,
      letterSpacing: headlineLetterSpacing,
      color: headlineColor,
      fontWeight: headlineWeight,
    ),
    headlineSmall: TextStyle(
      fontSize: 18,
      height: headlineHeight,
      letterSpacing: headlineLetterSpacing,
      color: headlineColor,
      fontWeight: headlineWeight,
    ),

    // Title
    titleLarge: TextStyle(
      fontSize: 20,
      height: titleHeight,
      letterSpacing: titleLetterSpacing,
      color: titleColor,
      fontWeight: titleWeight,
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      height: titleHeight,
      letterSpacing: titleLetterSpacing,
      color: titleColor,
      fontWeight: titleWeight,
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      height: titleHeight,
      letterSpacing: titleLetterSpacing,
      color: titleColor,
      fontWeight: titleWeight,
    ),

    // Body
    bodyLarge: TextStyle(
      fontSize: 16,
      height: bodyHeight,
      letterSpacing: bodyLetterSpacing,
      color: bodyColor,
      fontWeight: bodyWeight,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      height: bodyHeight,
      letterSpacing: bodyLetterSpacing,
      color: bodyColor,
      fontWeight: bodyWeight,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      height: bodyHeight,
      color: bodyColor,
      fontWeight: bodyWeight,
    ),

    // Label
    labelLarge: TextStyle(
      fontSize: 16,
      height: bodyHeight,
      letterSpacing: bodyLetterSpacing,
      color: labelColor,
      fontWeight: bodyWeight,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      height: bodyHeight,
      letterSpacing: bodyLetterSpacing,
      color: labelColor,
      fontWeight: bodyWeight,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      height: bodyHeight,
      letterSpacing: bodyLetterSpacing,
      color: labelColor,
      fontWeight: bodyWeight,
    ),
  );

  return GoogleFonts.interTextTheme(textTheme);
}
