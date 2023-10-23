import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ApplicationTheme{

  static ThemeData theme = ThemeData(
    textTheme: TextTheme(
        titleLarge: GoogleFonts.amaranth(
          fontWeight: FontWeight.normal,
          fontSize: 24,
          color: Colors.black,
        ),
      titleMedium: GoogleFonts.inter(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: const Color(0xff371B34),
      ),
      bodyLarge: GoogleFonts.inter(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: Colors.black,
      ),
      bodyMedium: GoogleFonts.inter(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: const Color(0xff371B34),
      ),
      bodySmall: GoogleFonts.inter(
        fontWeight: FontWeight.w600,
        fontSize: 14,
        color: Colors.black,
      ),
    ),
  );

}