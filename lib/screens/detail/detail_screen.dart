// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_shop/constants/typography/const_text_styles.dart';
import 'package:flutter/material.dart';

import '../../widgets/detail/detail_appbar.dart';
import '../../widgets/detail/detail_buying.dart';
import '../../widgets/detail/detail_coffee.dart';
import '../../widgets/detail/detail_description.dart';
import '../../widgets/detail/detail_size.dart';

class DetailScreen extends StatelessWidget {
  final String image;

  final String title;

  final String subtitle;

  final String rating;

  final String votes;
  final String description;
  const DetailScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.votes,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DetailAppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16.0),
            DetailCoffeeWidget(
                title: title, subtitle: subtitle, rating: rating, votes: votes),
            const SizedBox(height: 16.0),
            DetailDescriptionWidget(description: description),
            const SizedBox(height: 24.0),
            Text(
              'Size',
              style: primarySemi16,
            ),
            const SizedBox(height: 16.0),
            const DetailCoffeeSizeWidget(),
            const SizedBox(height: 24.0),
          ],
        ),
      ),
      bottomNavigationBar: const DetailBuyingWidget(),
    );
  }
}
