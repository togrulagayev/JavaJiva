import 'package:coffee_shop/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/theme/const_colors.dart';

class OrderCountWidget extends StatelessWidget {
  const OrderCountWidget({
    super.key,
    required this.url,
    required this.title,
    required this.subtitle,
  });

  final String url;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 54,
          height: 54,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(url, fit: BoxFit.cover),
          ),
        ),
        const SizedBox(width: 16),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const Spacer(),
        const OrderCounterWidget(),
      ],
    );
  }
}

class OrderCounterWidget extends ConsumerWidget {
  const OrderCounterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int counter = ref.watch(counterProvider);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton.filled(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.white),
            foregroundColor: WidgetStateProperty.all(tertiaryTextColor),
          ),
          onPressed: () {
            if (counter == 1) {
              counter = 1;
            } else {
              ref.read(counterProvider.notifier).state--;
            }
          },
          icon: const Icon(Icons.remove),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: Text("$counter"),
        ),
        IconButton.filled(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.white),
            foregroundColor: WidgetStateProperty.all(tertiaryTextColor),
          ),
          onPressed: () {
            ref.read(counterProvider.notifier).state++;
          },
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}
