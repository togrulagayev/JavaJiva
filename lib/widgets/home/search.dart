import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/theme/const_colors.dart';
import '../../constants/typography/const_text_styles.dart';

class HomeSearchWidget extends StatelessWidget {
  const HomeSearchWidget({
    super.key,
    required this.sh,
    required this.sw,
  });

  final double sh;
  final double sw;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: sh * 0.064,
          width: sw * 0.69,
          child: TextFormField(
            style: GoogleFonts.sora(
              color: tertiaryTextColor,
              fontSize: 16,
              letterSpacing: 0,
              height: kSecondaryLineHeight,
            ),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(16.0),
              prefixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/search.svg',
                ),
              ),
              hintText: 'Search coffee',
              hintStyle: GoogleFonts.sora(
                color: tertiaryTextColor,
                fontSize: 14,
                letterSpacing: 0,
                height: kSecondaryLineHeight,
              ),
              filled: true,
              fillColor: secondaryTextColor,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        const SizedBox(width: 16.0),
        SizedBox(
          height: sh * 0.064,
          width: sw * 0.139,
          child: IconButton.filled(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/filter.svg',
            ),
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(buttonBackgroudColor),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
