import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';

import '../../widgets/onboard/button.dart';
import '../../widgets/onboard/image_widget.dart';
import '../../widgets/onboard/text.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff000000),
      body: SizedBox(
        height: 812.rh,
        width: 375.rw,
        child: Stack(
          children: [
            const OnboardImageWidget(),
            Positioned(
              top: 452.rh,
              child: SizedBox(
                height: 360.rh,
                width: 375.rw,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const OnboardTextWidget(),
                    SizedBox(height: 8.rh),
                    const OnboardSubTextWidget(),
                    SizedBox(height: 32.rh),
                    const OnboardButtonWidget(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
