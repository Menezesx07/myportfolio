import 'package:filledstacks_academy/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle get ktsBodyRegular => GoogleFonts.poppins(
  textStyle: const TextStyle(
    color: kcWhite,
  ),
);

TextStyle get ktsBodyBold => GoogleFonts.poppins(
  textStyle: const TextStyle(
    color: kcWhite,
    fontWeight: FontWeight.bold,
  ),
);

TextStyle get ktsBodyLight => GoogleFonts.poppins(
  textStyle: const TextStyle(
    color: kcWhite,
    fontWeight: FontWeight.w300,
  ),
);

TextStyle get ktsBodyExtraLight => GoogleFonts.poppins(
  textStyle: const TextStyle(
    color: kcWhite,
    fontWeight: FontWeight.w200, // ExtraLight
  ),
);

TextStyle get ktsBodyItalic => GoogleFonts.poppins(
  textStyle: const TextStyle(
    color: kcWhite,
    fontStyle: FontStyle.italic,
  ),
);

TextStyle get ktsBodyBoldItalic => GoogleFonts.poppins(
  textStyle: const TextStyle(
    color: kcWhite,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
  ),
);

TextStyle get ktsBodyLightItalic => GoogleFonts.poppins(
  textStyle: const TextStyle(
    color: kcWhite,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.italic,
    fontSize: 96
  ),
);

TextStyle get ktsBodyExtraLightItalic => GoogleFonts.poppins(
  textStyle: const TextStyle(
    color: kcWhite,
    fontWeight: FontWeight.w200, // ExtraLight
    fontStyle: FontStyle.italic,
    fontSize: 64
  ),
);

