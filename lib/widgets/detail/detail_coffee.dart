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
                fontSize: 20,
                fontWeight: FontWeight.w700,
                height: 1.5,
                color: primaryTextColor,
              ),
            ),
            const SizedBox(height: 4.0),
            Text(
              subtitle,
              style: GoogleFonts.sora(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                height: 1.2,
                color: tertiaryTextColor,
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/icons/star.svg',
                  width: 20,
                  height: 20,
                ),
                const SizedBox(width: 4.0),
                Text(rating),
                const SizedBox(width: 8.0),
                Text(
                  '($votes )',
                  style: GoogleFonts.sora(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    height: 1.2,
                    color: tertiaryTextColor,
                  ),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        const DetailSuperiorityWidget(svg: 'bike'),
        const SizedBox(width: 16),
        const DetailSuperiorityWidget(svg: 'bean'),
        const SizedBox(width: 16),
        const DetailSuperiorityWidget(svg: 'milk'),
        const SizedBox(height: 16.0),
        const Center(
          child: Divider(
            color: Color(0xffE3E3E3),
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
        ),
      ],
    );
  }
}
