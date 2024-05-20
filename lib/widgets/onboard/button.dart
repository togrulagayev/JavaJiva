import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/theme/const_colors.dart';
import '../../constants/typography/const_text_styles.dart';
import '../../screens/home/home_screen.dart';

class OnboardButtonWidget extends StatelessWidget {
  const OnboardButtonWidget({
    super.key,
    required this.sw,
  });

  final double sw;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(buttonBackgroudColor),
        foregroundColor: WidgetStateProperty.all(buttonForegroudColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        minimumSize: WidgetStateProperty.all(
          Size(sw * 0.8, 56),
        ),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 20,
          ),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      },
      child: Text(
        'Get Started',
        style: whiteSemi16,
      ),
    );
  }
}
