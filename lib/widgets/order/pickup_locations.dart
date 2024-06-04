import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/theme/const_colors.dart';
import '../../constants/typography/const_text_styles.dart';

class PickUpLocationsWidget extends StatelessWidget {
  const PickUpLocationsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Pick up locations', style: primarySemi18),
        const PickUpAddressWidget(
          address: '66th St, New York, NY 10065, USA',
        ),
        const PickUpAddressWidget(
          address: '66th St, New York, NY 10065, USA',
        ),
        const PickUpAddressWidget(
          address: '66th St, New York, NY 10065, USA',
        ),
        const PickUpAddressWidget(
          address: '66th St, New York, NY 10065, USA',
        ),
      ],
    );
  }
}

class PickUpAddressWidget extends StatelessWidget {
  final String address;
  const PickUpAddressWidget({
    super.key,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          address,
          style: GoogleFonts.sora(
            fontSize: 14.rt,
            color: primaryTextColor,
            fontWeight: FontWeight.normal,
            height: 3.rh,
          ),
        ),
         Divider(color: Color(0xffF9F2ED), thickness: 4.rh),
      ],
    );
  }
}
