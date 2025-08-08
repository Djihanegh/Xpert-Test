import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Shader linearGradient = const LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color.fromRGBO(86, 134, 254, 1), // Primary/Base
    Color.fromRGBO(204, 219, 255, 1), // Primary/30
  ],
).createShader(Rect.fromLTWH(0.0, 0.0, 100.0, 20.0));

class CustomBadge extends StatelessWidget {
  final String text;
  final Color backgroundColor;

  const CustomBadge({
    super.key,
    required this.text,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(1.15), // Border thickness
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: text == 'PRO'
                ? [
                    Color.fromRGBO(2, 73, 254, 0.6),
                    Color.fromRGBO(128, 164, 254, 0.6),
                  ]
                : [backgroundColor, backgroundColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(1000), // Max pill shape
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: text == 'PRO'
                  ? [Color.fromRGBO(2, 73, 254, 0.3), Color.fromRGBO(128, 164, 254, 0.3)]
                  : text == 'Funded'
                      ? [Color(0xFF053321), Color(0xFF053321)]
                      : [Color(0xFF11285F), Color(0xFF11285F)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(1140.57),
          ),
          child: AutoSizeText(
            text,
            style: GoogleFonts.interTight(
              fontWeight: FontWeight.bold,
              height: 1.4,
              foreground: Paint()
                ..shader = text == 'PRO'
                    ? linearGradient
                    : LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [backgroundColor, backgroundColor],
                      ).createShader(Rect.fromLTWH(0.0, 0.0, 100.0, 20.0)),
              shadows: [
                Shadow(offset: Offset(0, 0), blurRadius: 11.42, color: Color.fromRGBO(171, 194, 255, 0.7)),
              ],
            ),
            maxFontSize: 14,
          ),
        ));
  }
}
