import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/theme/const_colors.dart';
import '../../constants/typography/const_text_styles.dart';

class PaymentSummaryWidget extends StatelessWidget {
  const PaymentSummaryWidget({
    super.key,
    required this.price,
    required this.deliveryFee,
  });

  final double price;
  final double deliveryFee;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        const DiscountWidget(),
        const SizedBox(height: 24),
        Text(
          'Payment Summary',
          style: primarySemi16,
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Price',
              style: GoogleFonts.sora(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                height: 1.5,
                color: const Color(0xff313131),
              ),
            ),
            Text(
              '\$ $price',
              style: GoogleFonts.sora(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                height: 1.5,
                color: primaryTextColor,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Delivery Fee',
              style: GoogleFonts.sora(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                height: 1.5,
                color: const Color(0xff313131),
              ),
            ),
            Text(
              '\$ $deliveryFee',
              style: GoogleFonts.sora(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                height: 1.5,
                color: primaryTextColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class DiscountWidget extends StatelessWidget {
  const DiscountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton.icon(
            style: ButtonStyle(
              elevation: WidgetStateProperty.all(0),
              padding: const WidgetStatePropertyAll(
                EdgeInsets.all(20),
              ),
              backgroundColor: WidgetStateProperty.all(Colors.white),
              side: const WidgetStatePropertyAll(
                BorderSide(
                  color: Color(0xffEDEDED),
                ),
              ),
            ),
            onPressed: () {},
            label: Row(
              children: [
                SvgPicture.asset('assets/icons/discount.svg'),
                const SizedBox(width: 16),
                Text(
                  '0 Discount is Applies',
                  style: GoogleFonts.sora(
                    color: const Color(0xff313131),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                  ),
                ),
              ],
            ),
            icon: SvgPicture.asset('assets/icons/arrowForward.svg'),
            iconAlignment: IconAlignment.end,
          ),
        ),
      ],
    );
  }
}
