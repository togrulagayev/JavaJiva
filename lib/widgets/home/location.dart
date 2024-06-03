import 'package:flexify/flexify.dart';
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
            fontSize: 12.rt,
            height: kSecondaryLineHeight,
          ),
        ),
        SizedBox(height: 8.0.rh),
        Row(
          children: [
            Text(
              'Baku, Azerbaijan',
              style: GoogleFonts.sora(
                color: const Color(0xFFD8D8D8),
                fontSize: 14.rt,
                fontWeight: FontWeight.w600,
                height: 1.5.rh,
              ),
            ),
            SizedBox(width: 8.0.rw),
            SizedBox(
              width: 14.0.rw,
              height: 14.0.rh,
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
