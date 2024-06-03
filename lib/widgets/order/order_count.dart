import 'package:coffee_shop/constants/typography/const_text_styles.dart';
import 'package:coffee_shop/providers/counter_provider.dart';
import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

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
          width: 54.rw,
          height: 54.rh,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.rs),
            child: Image.network(url, fit: BoxFit.cover),
          ),
        ),
        SizedBox(width: 16.rw),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 16.rt,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 4.rh),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 14.rt,
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
          padding: EdgeInsets.only(left: 18.rw, right: 18.rw),
          child: Text(
            "$counter",
            style: GoogleFonts.sora(
              fontSize: 14.rt,
              color: primaryTextColor,
              fontWeight: FontWeight.bold,
              height: kPrimaryLineHeight,
            ),
          ),
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
