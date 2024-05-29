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
      width: 44,
      padding: const EdgeInsets.all(6.0),
      height: 44,
      decoration: BoxDecoration(
        color: const Color(0xFFEDEDED).withOpacity(0.35),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: SvgPicture.asset(
        'assets/icons/$svg.svg',
        width: 24,
        height: 24,
      ),
    );
  }
}
