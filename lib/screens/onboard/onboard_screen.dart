import 'package:flutter/material.dart';

import '../../widgets/onboard/button.dart';
import '../../widgets/onboard/image_widget.dart';
import '../../widgets/onboard/text.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double sh = MediaQuery.of(context).size.height;
    final double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: Column(
        children: [
          OnboardImageWidget(sh: sh),
          SizedBox(
            height: sh * 0.34,
            width: sw,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const OnboardTextWidget(),
                const SizedBox(height: 8),
                const OnboardSubTextWidget(),
                const SizedBox(height: 32),
                OnboardButtonWidget(sw: sw),
              ],
            ),
          )
        ],
      ),
    );
  }
}
