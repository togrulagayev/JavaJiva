import 'package:flutter/material.dart';

import '../../widgets/order/deliver_tab.dart';
import '../../widgets/order/order_appbar.dart';
import '../../widgets/order/order_confirm.dart';
import '../../widgets/order/pickup_tab.dart';

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
            PickUpTabWidget(
                url: url,
                title: title,
                subtitle: subtitle,
                price: price,
                deliveryFee: deliveryFee),
          ],
        ),
        bottomNavigationBar:
            OrderConfirmWidget(price: price, deliveryFee: deliveryFee),
      ),
    );
  }
}
