import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/theme/const_colors.dart';
import '../../constants/typography/const_text_styles.dart';

class HomeLocationWidget extends StatelessWidget {
  const HomeLocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location',
          style: GoogleFonts.sora(
            color: tertiaryTextColor,
            fontSize: 12,
            letterSpacing: kDefaultLetterSpacing,
            height: kSecondaryLineHeight,
          ),
        ),
        const SizedBox(height: 8.0),
        Row(
          children: [
            Text(
              'Baku, Azerbaijan',
              style: GoogleFonts.sora(
                color: const Color(0xFFD8D8D8),
                fontSize: 14,
                letterSpacing: 0,
                fontWeight: FontWeight.w600,
                height: kPrimaryLineHeight,
              ),
            ),
            const SizedBox(width: 8.0),
            SizedBox(
              width: 14.0,
              height: 14.0,
              child: SvgPicture.asset(
                'assets/icons/arrowDown.svg',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
