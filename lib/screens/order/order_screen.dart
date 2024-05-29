import 'package:flutter/material.dart';

import '../../widgets/order/order_appbar.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: OrderAppBarWidget(),
        body: TabBarView(
          children: [
            Center(
              child: Text('Deliver'),
            ),
            Center(
              child: Text('Pickup'),
            ),
          ],
        ),
      ),
    );
  }
}
