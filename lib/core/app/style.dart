import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTheme = _getTheme(brightness: Brightness.light);

const _primary = Color(0xFF11285F);
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
    tertiary: _green);

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

  final bodyColor = _lightest;
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

class AppColors {
  static const Color primary = Color.fromRGBO(2, 73, 254, 0.6);
  static const Color secondary = Color.fromRGBO(128, 164, 254, 0.6);
  static const Color border = Color.fromRGBO(255, 255, 255, 0.05);
  static const Color background = Color(0xFFFFFFFF); // hex example

  static const Color point = Color.fromRGBO(255, 255, 255, 0.8);
  static const Color white90 = Color.fromRGBO(255, 255, 255, 0.9);
  static const Color white60 = Color.fromRGBO(255, 255, 255, 0.6);

  static kPrimaryGradient(String text, Color backgroundColor) => LinearGradient(
        colors: text == text
            ? [
                AppColors.primary,
                AppColors.secondary,
              ]
            : [backgroundColor, backgroundColor],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );

  static kSecondaryGradient(String text, Color color) => LinearGradient(
        colors: text == 'PRO'
            ? [Color.fromRGBO(2, 73, 254, 0.3), Color.fromRGBO(128, 164, 254, 0.3)]
            : text == 'Funded'
                ? [Color(0xFF053321), Color(0xFF053321)]
                : [color, color],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
}

Decoration primaryBoxDecoration(String text, Color color) => BoxDecoration(
      gradient: AppColors.kPrimaryGradient(text, color),
      borderRadius: BorderRadius.circular(1000), // Max pill shape
    );

Decoration secondaryBoxDecoration(String text, Color color) => BoxDecoration(
      gradient: AppColors.kSecondaryGradient(text, color),
      borderRadius: BorderRadius.circular(1140.57),
    );

Decoration phaseListDecoration() => BoxDecoration(
    color: Color.fromRGBO(255, 255, 255, 0.1),
    border: Border(
      top: BorderSide(
        color: Color.fromRGBO(255, 255, 255, 0.05), // Bottom border color
        width: 1.14, // Top border thickness
      ),
      bottom: BorderSide(
        color: Color.fromRGBO(255, 255, 255, 0.05), // Bottom border color
        width: 1.14, // Bottom border thickness
      ),
    ));

Shader linearGradient = const LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color.fromRGBO(86, 134, 254, 1), // Primary/Base
    Color.fromRGBO(204, 219, 255, 1), // Primary/30
  ],
).createShader(Rect.fromLTWH(0.0, 0.0, 100.0, 20.0));

TextStyle customInterTightTextStyle(Color color, String text) => GoogleFonts.interTight(
      fontWeight: FontWeight.bold,
      height: 1.4,
      foreground: Paint()
        ..shader = text == 'PRO'
            ? linearGradient
            : LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [color, color],
              ).createShader(Rect.fromLTWH(0.0, 0.0, 100.0, 20.0)),
      shadows: [
        Shadow(offset: Offset(0, 0), blurRadius: 11.42, color: Color.fromRGBO(171, 194, 255, 0.7)),
      ],
    );

Decoration decorationBox(context) => BoxDecoration(
      color: context.colorScheme.primary,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(30),
          blurRadius: 10,
          offset: const Offset(0, 4),
        )
      ],
    );
