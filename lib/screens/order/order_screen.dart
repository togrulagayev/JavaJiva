import 'package:coffee_shop/constants/theme/const_colors.dart';
import 'package:coffee_shop/constants/typography/const_text_styles.dart';
import 'package:coffee_shop/widgets/order/delivery_address.dart';
import 'package:coffee_shop/widgets/order/pickup_pricing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../widgets/order/order_appbar.dart';
import '../../widgets/order/order_confirm.dart';
import '../../widgets/order/order_count.dart';
import '../../widgets/order/payment_summary.dart';

class OrderScreen extends StatelessWidget {
  final String url;

  final String title;

  final String subtitle;
  final double price;
  final double deliveryFee = 2.0;
  final double total = 0.0;
  const OrderScreen({
    super.key,
    required this.url,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: const OrderAppBarWidget(),
        body: TabBarView(
          children: [
            DeliveryWidget(
                url: url,
                title: title,
                subtitle: subtitle,
                price: price,
                deliveryFee: deliveryFee),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PickUpLocationsWidget(),
                  const SizedBox(height: 16),
                  OrderCountWidget(url: url, title: title, subtitle: subtitle),
                  PickupPaymentWidget(price: price, serviceFee: deliveryFee),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar:
            OrderConfirmWidget(price: price, deliveryFee: deliveryFee),
      ),
    );
  }
}

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
            fontSize: 14,
            color: primaryTextColor,
            fontWeight: FontWeight.normal,
            height: 3,
          ),
        ),
        const Divider(color: Color(0xffF9F2ED), thickness: 4),
      ],
    );
  }
}

class DeliveryWidget extends StatelessWidget {
  const DeliveryWidget({
    super.key,
    required this.url,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.deliveryFee,
  });

  final String url;
  final String title;
  final String subtitle;
  final double price;
  final double deliveryFee;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
