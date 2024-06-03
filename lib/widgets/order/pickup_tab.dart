import 'package:flutter/material.dart';

import 'order_count.dart';
import 'pickup_locations.dart';
import 'pickup_pricing.dart';

class PickUpTabWidget extends StatelessWidget {
  const PickUpTabWidget({
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
    );
  }
}
