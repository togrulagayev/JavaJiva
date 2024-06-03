import 'package:coffee_shop/providers/counter_provider.dart';
import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
        SizedBox(height: 16.rh),
        const DiscountWidget(),
        SizedBox(height: 24.rh),
        Text(
          'Payment Summary',
          style: primarySemi16,
        ),
        SizedBox(height: 16.rh),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Price',
              style: GoogleFonts.sora(
                fontSize: 14.rt,
                fontWeight: FontWeight.normal,
                height: 1.5.rh,
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
                    fontSize: 14.rt,
                    fontWeight: FontWeight.bold,
                    height: 1.5.rh,
                    color: primaryTextColor,
                  ),
                );
              },
            ),
          ],
        ),
        SizedBox(height: 8.rh),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Delivery Fee',
              style: GoogleFonts.sora(
                fontSize: 14.rt,
                fontWeight: FontWeight.normal,
                height: 1.5.rh,
                color: const Color(0xff313131),
              ),
            ),
            Text(
              '\$ $deliveryFee',
              style: GoogleFonts.sora(
                fontSize: 14.rt,
                fontWeight: FontWeight.bold,
                height: 1.5.rh,
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
              padding: WidgetStatePropertyAll(
                EdgeInsets.all(20.rs),
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
                SizedBox(width: 16.rw),
                Text(
                  '0 Discount is Applies',
                  style: GoogleFonts.sora(
                    color: const Color(0xff313131),
                    fontSize: 14.rt,
                    fontWeight: FontWeight.bold,
                    height: 1.5.rh,
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
