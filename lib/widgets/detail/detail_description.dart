import 'package:flutter/material.dart';

import '../../constants/typography/const_text_styles.dart';

class DetailDescriptionWidget extends StatelessWidget {
  const DetailDescriptionWidget({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: primarySemi16,
        ),
        const SizedBox(height: 8.0),
        Text(
          description,
          style: secondary14,
          textAlign: TextAlign.justify,
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
        ),
      ],
    );
  }
}
