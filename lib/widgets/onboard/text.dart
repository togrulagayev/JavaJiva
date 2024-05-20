import 'package:flutter/material.dart';

import '../../constants/typography/const_text_styles.dart';

class OnboardTextWidget extends StatelessWidget {
  const OnboardTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327,
      child: Text(
        'Fall in Love with Coffee in Blissful Delight!',
        textAlign: TextAlign.center,
        style: onboardTextStyle,
      ),
    );
  }
}

class OnboardSubTextWidget extends StatelessWidget {
  const OnboardSubTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 327,
      child: Text(
        'Welcome to our cozy coffee corner, where every cup is a delightful for you.',
        textAlign: TextAlign.center,
        style: onboardSubTextStyle,
      ),
    );
  }
}
