import 'package:coffee_shop/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/theme/const_colors.dart';
import '../../constants/typography/const_text_styles.dart';

class PickupPaymentWidget extends StatelessWidget {
  const PickupPaymentWidget({
    super.key,
    required this.price,
    required this.serviceFee,
  });

  final double price;
  final double serviceFee;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
            Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                int count = ref.watch(counterProvider);
                double total = price * count;
                return Text(
                  '\$ ${total.toStringAsFixed(2)}',
                  style: GoogleFonts.sora(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    height: 1.5,
                    color: primaryTextColor,
                  ),
                );
              },
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
              'Service Fee',
              style: GoogleFonts.sora(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                height: 1.5,
                color: const Color(0xff313131),
              ),
            ),
            Text(
              '\$ $serviceFee',
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
