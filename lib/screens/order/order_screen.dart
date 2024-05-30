import 'package:coffee_shop/widgets/order/delivery_address.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/theme/const_colors.dart';
import '../../widgets/order/order_appbar.dart';
import '../../widgets/order/order_count.dart';
import '../../widgets/order/payment_summary.dart';

class OrderScreen extends StatelessWidget {
  final String url;

  final String title;

  final String subtitle;
  final double price;
  final double deliveryFee = 2.0;
  final double total = 0.0;
  const OrderScreen(
      {super.key,
      required this.url,
      required this.title,
      required this.subtitle,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const OrderAppBarWidget(),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const DeliveryAddressWidget(),
                  const SizedBox(height: 16),
                  OrderCountWidget(url: url, title: title, subtitle: subtitle),
                  const SizedBox(height: 16),
                  const Divider(color: Color(0xffF9F2ED), thickness: 4),
                  PaymentSummaryWidget(price: price, deliveryFee: deliveryFee)
                ],
              ),
            ),
            const Center(
              child: Text('Pickup'),
            ),
          ],
        ),
        bottomNavigationBar:
            OrderConfirmWidget(price: price, deliveryFee: deliveryFee),
      ),
    );
  }
}

class OrderConfirmWidget extends StatelessWidget {
  final double deliveryFee;
  final double price;

  const OrderConfirmWidget({
    super.key,
    required this.price,
    required this.deliveryFee,
  });

  @override
  Widget build(BuildContext context) {
    double total = 0.0;
    total = price + deliveryFee;
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
                        '\$ $total',
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
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
