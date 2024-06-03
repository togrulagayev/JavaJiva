import 'package:coffee_shop/widgets/order/payment_summary.dart';
import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';

import 'delivery_address.dart';
import 'order_count.dart';

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
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 24.rw, right: 24.rw, top: 24.rh),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DeliveryAddressWidget(),
              SizedBox(height: 16.rh),
              OrderCountWidget(url: url, title: title, subtitle: subtitle),
              SizedBox(height: 16.rh),
            ],
          ),
        ),
        Divider(color: const Color(0xffF9F2ED), thickness: 4.rh),
        Padding(
          padding: EdgeInsets.only(left: 24.rw, right: 24.rw),
          child: PaymentSummaryWidget(price: price, deliveryFee: deliveryFee),
        ),
      ],
    );
  }
}
