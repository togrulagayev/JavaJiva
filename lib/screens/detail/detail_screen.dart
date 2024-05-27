// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_shop/constants/theme/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/detail/detail_appbar.dart';

class DetailScreen extends StatelessWidget {
  final String image;

  final String title;

  final String subtitle;

  final String rating;

  final String votes;
  const DetailScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.votes,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DetailAppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
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
              ],
            ),
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
        ),
      ),
    );
  }
}

class DetailSuperiorityWidget extends StatelessWidget {
  final String svg;
  const DetailSuperiorityWidget({
    super.key,
    required this.svg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      padding: const EdgeInsets.all(6.0),
      height: 44,
      decoration: BoxDecoration(
        color: const Color(0xFFEDEDED).withOpacity(0.35),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: SvgPicture.asset(
        'assets/icons/$svg.svg',
        width: 24,
        height: 24,
      ),
    );
  }
}
