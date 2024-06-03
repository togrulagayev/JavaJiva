import 'package:flexify/flexify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/theme/const_colors.dart';
import '../../screens/home/home_screen.dart';

class OnboardButtonWidget extends StatelessWidget {
  const OnboardButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(buttonBackgroudColor),
        foregroundColor: WidgetStateProperty.all(buttonForegroudColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.rs),
          ),
        ),
        minimumSize: WidgetStateProperty.all(
          Size(327.rw, 56.rh),
        ),
        padding: WidgetStateProperty.all(
          EdgeInsets.symmetric(
            vertical: 16.rs,
            horizontal: 20.rs,
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
        style: GoogleFonts.sora(
          fontSize: 16.rt,
          fontWeight: FontWeight.w600,
          color: Colors.white,
          height: 1.5.rh,
        ),
      ),
    );
  }
}
