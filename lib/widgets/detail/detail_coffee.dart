import 'package:coffee_shop/constants/typography/const_text_styles.dart';
import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/theme/const_colors.dart';
import 'detail_superiority.dart';

class DetailCoffeeWidget extends StatelessWidget {
  const DetailCoffeeWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.votes,
  });

  final String title;
  final String subtitle;
  final String rating;
  final String votes;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.sora(
                fontSize: 20.rt,
                fontWeight: FontWeight.w700,
                height: kPrimaryLineHeight,
                color: primaryTextColor,
              ),
            ),
            SizedBox(height: 4.0.rh),
            Text(
              subtitle,
              style: GoogleFonts.sora(
                fontSize: 12.rt,
                fontWeight: FontWeight.normal,
                height: kSecondaryLineHeight,
                color: tertiaryTextColor,
              ),
            ),
            SizedBox(height: 16.0.rh),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/icons/star.svg',
                  width: 20.rw,
                  height: 20.rh,
                ),
                SizedBox(width: 4.0.rw),
                Text(
                  rating,
                  style: GoogleFonts.sora(
                    fontSize: 16.rt,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff2A2A2A),
                  ),
                ),
                SizedBox(width: 8.0.rw),
                Text(
                  '($votes )',
                  style: GoogleFonts.sora(
                    fontSize: 12.rt,
                    fontWeight: FontWeight.normal,
                    height: kSecondaryLineHeight,
                    color: tertiaryTextColor,
                  ),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        const DetailSuperiorityWidget(svg: 'bike'),
        SizedBox(width: 16.rw),
        const DetailSuperiorityWidget(svg: 'bean'),
        SizedBox(width: 16.rw),
        const DetailSuperiorityWidget(svg: 'milk'),
      ],
    );
  }
}
