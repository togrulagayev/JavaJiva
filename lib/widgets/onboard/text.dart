import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardTextWidget extends StatelessWidget {
  const OnboardTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.rw,
      child: Text(
        'Fall in Love with Coffee in Blissful Delight!',
        textAlign: TextAlign.center,
        style: GoogleFonts.sora(
          fontSize: 32.rt, //! responsive text
          color: Colors.white,
          fontWeight: FontWeight.w600,
          height: 1.5.rw,
        ),
      ),
    );
  }
}

class OnboardSubTextWidget extends StatelessWidget {
  const OnboardSubTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.rw,
      child: Text(
        'Welcome to our cozy coffee corner, where every cup is a delightful for you.',
        textAlign: TextAlign.center,
        style: GoogleFonts.sora(
          fontSize: 14.rt,
          color: const Color(0xffA2A2A2),
          height: 1.5.rs, //! responsive size
        ),
      ),
    );
  }
}
