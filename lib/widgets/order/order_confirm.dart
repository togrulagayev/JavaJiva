import 'package:flexify/flexify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/theme/const_colors.dart';
import '../../providers/counter_provider.dart';
import '../../screens/delivery/delivery_screen.dart';
import '../../screens/pickup/pickup_screen.dart';

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
    bool isDelivery = ref.watch(orederTypeProvider);
    int counter = ref.watch(counterProvider);
    double total = ref.watch(totalPriceProvider);
    total = (price * counter) + deliveryFee;
    return SizedBox(
      height: 165.rh,
      width: 375.rw,
      child: Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.rs),
            topRight: Radius.circular(24.rs),
          ),
        ),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.rw, vertical: 20.0.rh),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset('assets/icons/wallet.svg'),
                  SizedBox(width: 16.0.rw),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cash/Wallet',
                        style: GoogleFonts.sora(
                          fontSize: 14.rt,
                          fontWeight: FontWeight.bold,
                          height: 1.5.rh,
                          color: primaryTextColor,
                        ),
                      ),
                      SizedBox(height: 4.0.rh),
                      Text(
                        '\$ ${total.toStringAsFixed(2)}',
                        style: GoogleFonts.sora(
                          color: buttonBackgroudColor,
                          fontSize: 12.rt,
                          fontWeight: FontWeight.w700,
                          height: 1.5.rh,
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
                      height: 10.rh,
                      width: 10.rw,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0.rh),
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
                          EdgeInsets.symmetric(
                              horizontal: 24.0.rw, vertical: 16.0.rh),
                        ),
                        shape: WidgetStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.rs),
                          ),
                        ),
                      ),
                      onPressed: () {
                        if (isDelivery) {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const DeliveryScreen(),
                            ),
                          );
                        } else {
                          Navigator.push(
                            context,
                            CupertinoPageRoute(
                              builder: (context) => const PickupScreen(),
                            ),
                          );
                        }
                      },
                      child: Text(
                        'Order',
                        style: GoogleFonts.sora(
                          fontSize: 16.rt,
                          fontWeight: FontWeight.bold,
                          height: 1.5.rh,
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
