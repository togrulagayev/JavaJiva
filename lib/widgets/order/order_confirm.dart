import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/theme/const_colors.dart';
import '../../providers/counter_provider.dart';

class OrderConfirmWidget extends ConsumerWidget {
  final double deliveryFee;
  final double price;

  const OrderConfirmWidget({
    super.key,
    required this.price,
    required this.deliveryFee,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int counter = ref.watch(counterProvider);
    double total = ref.watch(totalPriceProvider);
    total = (price * counter) + deliveryFee;
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        margin: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset('assets/icons/wallet.svg'),
                  const SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cash/Wallet',
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                          color: primaryTextColor,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        '\$ ${total.toStringAsFixed(2)}',
                        style: GoogleFonts.sora(
                          color: buttonBackgroudColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      'assets/icons/arrowDown.svg',
                      // ignore: deprecated_member_use
                      color: primaryTextColor,
                      height: 10,
                      width: 10,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                          buttonBackgroudColor,
                        ),
                        padding: WidgetStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 24.0, vertical: 16.0),
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Order',
                        style: GoogleFonts.sora(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
