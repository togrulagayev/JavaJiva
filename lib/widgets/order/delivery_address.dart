import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/theme/const_colors.dart';
import '../../constants/typography/const_text_styles.dart';

class DeliveryAddressWidget extends StatelessWidget {
  const DeliveryAddressWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327.0.rw,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Delivery Address',
            style: primarySemi16,
          ),
          SizedBox(height: 16.0.rh),
          Text(
            'Baku, Azerbaijan',
            style: GoogleFonts.sora(
              fontSize: 14.rt,
              color: const Color(0xff313131),
              fontWeight: FontWeight.w600,
              height: kPrimaryLineHeight,
            ),
          ),
          SizedBox(height: 4.0.rh),
          Text(
            '93 Fatali Khan Khoyski avenue',
            style: GoogleFonts.sora(
              fontSize: 12.rt,
              color: tertiaryTextColor,
              fontWeight: FontWeight.normal,
              height: kSecondaryLineHeight,
            ),
          ),
          SizedBox(height: 16.0.rh),
          Row(
            children: [
              OutlinedButton.icon(
                style: ButtonStyle(
                  iconSize: WidgetStatePropertyAll(14.rs),
                  foregroundColor: WidgetStateProperty.all(
                    const Color(0xff313131),
                  ),
                  minimumSize: WidgetStatePropertyAll(
                    Size(double.minPositive, 26.0.rh),
                  ),
                  side: const WidgetStatePropertyAll(
                    BorderSide(
                      color: tertiaryTextColor,
                    ),
                  ),
                ),
                onPressed: () {},
                label: Text(
                  'Change Address',
                  style: GoogleFonts.sora(
                    fontSize: 12.rt,
                    height: kSecondaryLineHeight,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xff313131),
                  ),
                ),
                icon: const Icon(
                  Icons.edit_location_outlined,
                ),
              ),
              SizedBox(width: 16.0.rw),
              OutlinedButton.icon(
                style: ButtonStyle(
                  iconSize: WidgetStatePropertyAll(14.rs),
                  foregroundColor: WidgetStateProperty.all(
                    const Color(0xff313131),
                  ),
                  minimumSize: WidgetStatePropertyAll(
                    Size(double.minPositive, 26.0.rh),
                  ),
                  side: const WidgetStatePropertyAll(
                    BorderSide(
                      color: tertiaryTextColor,
                    ),
                  ),
                ),
                onPressed: () {},
                label: Text(
                  'Add Note',
                  style: GoogleFonts.sora(
                    fontSize: 12.rt,
                    height: kSecondaryLineHeight,
                    fontWeight: FontWeight.normal,
                    color: const Color(0xff313131),
                  ),
                ),
                icon: const Icon(
                  Icons.note_add_outlined,
                ),
              ),
            ],
          ),
          Divider(
            color: const Color(0xffE3E3E3),
            thickness: 1,
            endIndent: 16.rw,
            indent: 16.rw,
            height: 16.rh,
          ),
        ],
      ),
    );
  }
}
