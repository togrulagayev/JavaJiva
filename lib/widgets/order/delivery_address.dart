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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Delivery Address',
          style: primarySemi16,
        ),
        const SizedBox(height: 16.0),
        Text(
          'Baku, Azerbaijan',
          style: GoogleFonts.sora(
            fontSize: 14,
            color: const Color(0xff313131),
            fontWeight: FontWeight.w600,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 4.0),
        Text(
          '93 Fatali Khan Khoyski avenue',
          style: GoogleFonts.sora(
            fontSize: 12,
            color: tertiaryTextColor,
            fontWeight: FontWeight.normal,
            height: 1.2,
          ),
        ),
        const SizedBox(height: 16.0),
        Row(
          children: [
            OutlinedButton.icon(
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all(
                  const Color(0xff313131),
                ),
                side: const WidgetStatePropertyAll(
                  BorderSide(
                    color: tertiaryTextColor,
                  ),
                ),
              ),
              onPressed: () {},
              label: const Text('Change Address'),
              icon: const Icon(
                Icons.edit_location_outlined,
              ),
            ),
            const SizedBox(width: 16.0),
            OutlinedButton.icon(
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all(
                  const Color(0xff313131),
                ),
                side: const WidgetStatePropertyAll(
                  BorderSide(
                    color: tertiaryTextColor,
                  ),
                ),
              ),
              onPressed: () {},
              label: const Text('Add Note'),
              icon: const Icon(
                Icons.note_add_outlined,
              ),
            ),
          ],
        ),
        const Divider(
          color: Color(0xffE3E3E3),
          thickness: 1,
          endIndent: 16,
          indent: 16,
          height: 24,
        ),
      ],
    );
  }
}
