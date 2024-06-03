import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';

class OnboardImageWidget extends StatelessWidget {
  const OnboardImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.rw, //! responsive width
      height: 536.rh, //! responsive height
      decoration: const BoxDecoration(),
      child: Image.asset(
        'assets/images/onboard.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
