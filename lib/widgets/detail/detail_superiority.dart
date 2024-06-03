import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailSuperiorityWidget extends StatelessWidget {
  final String svg;
  const DetailSuperiorityWidget({
    super.key,
    required this.svg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44.rw,
      height: 44.rh,
      padding: EdgeInsets.all(12.0.rs),
      decoration: BoxDecoration(
        color: const Color(0xFFEDEDED).withOpacity(0.35),
        borderRadius: BorderRadius.circular(16.0.rs),
      ),
      child: SvgPicture.asset(
        'assets/icons/$svg.svg',
        width: 20.rw,
        height: 20.rh,
      ),
    );
  }
}
