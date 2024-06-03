import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/theme/const_colors.dart';
import '../../constants/typography/const_text_styles.dart';

class HomeSearchWidget extends StatelessWidget {
  const HomeSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 52.rh,
          width: 259.rw,
          child: TextFormField(
            style: GoogleFonts.sora(
              color: tertiaryTextColor,
              fontSize: 16.rt,
              height: 1.2.rh,
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(16.0.rs),
              prefixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icons/search.svg',
                ),
              ),
              hintText: 'Search coffee',
              hintStyle: GoogleFonts.sora(
                color: tertiaryTextColor,
                fontSize: 14.rt,
                height: kSecondaryLineHeight,
              ),
              filled: true,
              fillColor: secondaryTextColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0.rs),
                ),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        SizedBox(width: 16.0.rw),
        SizedBox(
          height: 52.rh,
          width: 52.rw,
          child: IconButton.filled(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/filter.svg',
            ),
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(buttonBackgroudColor),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0.rs),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
