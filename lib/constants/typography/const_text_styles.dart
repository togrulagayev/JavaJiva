import 'package:coffee_shop/constants/theme/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const double kDefaultLetterSpacing = 1.0;
const double kPrimaryLineHeight = 1.5;
const double kSecondaryLineHeight = 1.2;

final onboardTextStyle = GoogleFonts.sora(
  fontSize: 32,
  color: Colors.white,
  fontWeight: FontWeight.w600,
  letterSpacing: 0.5,
  height: 1.5,
);

final onboardSubTextStyle = GoogleFonts.sora(
  fontSize: 14,
  color: const Color(0xffA2A2A2),
  letterSpacing: 0.1,
  height: 1.5,
);

final whiteSemi16 = GoogleFonts.sora(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: Colors.white,
  height: 1.5,
);

final primarySemi16 = GoogleFonts.sora(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: primaryTextColor,
  height: 1.5,
);

final secondary14 = GoogleFonts.sora(
  fontSize: 14,
  fontWeight: FontWeight.normal,
  height: 1.5,
  color: tertiaryTextColor,
);
final TextStyle primarySemi12 = GoogleFonts.sora(
  fontSize: 12,
  color: tertiaryTextColor,
  height: 1.2,
);

final primarySemi18 = GoogleFonts.sora(
  fontSize: 18,
  fontWeight: FontWeight.w700,
  color: const Color(0xFF050505),
  height: 1.5,
);

final categorySemi14 = GoogleFonts.sora(
  fontSize: 14,
  fontWeight: FontWeight.w700,
  color: const Color(0xffffffff),
  height: 1.5,
);
final categoryReg14 = GoogleFonts.sora(
  fontSize: 14,
  color: const Color(0xff313131),
  height: 1.5,
);
