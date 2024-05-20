import 'package:flutter/material.dart';

class OnboardImageWidget extends StatelessWidget {
  const OnboardImageWidget({
    super.key,
    required this.sh,
  });

  final double sh;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: sh * 0.66,
      decoration: const BoxDecoration(),
      child: Center(
        child: Image.asset(
          'assets/images/onboard.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
