// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_shop/constants/typography/const_text_styles.dart';
import 'package:flexify/flexify.dart';
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

  final double price;
  const DetailScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.votes,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DetailAppBarWidget(),
      body: Padding(
        padding: EdgeInsets.only(left: 24.0.rw, right: 24.0.rw, top: 24.0.rh),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0.rs),
              child: Image.network(
                image,
                width: 327.rw,
                height: 202.rh,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16.0.rh),
            DetailCoffeeWidget(
                title: title, subtitle: subtitle, rating: rating, votes: votes),
            SizedBox(height: 12.0.rh),
            Center(
              child: Divider(
                color: const Color(0xffE3E3E3),
                thickness: 1,
                indent: 16.rw,
                endIndent: 16.rw,
              ),
            ),
            SizedBox(height: 12.0.rh),
            DetailDescriptionWidget(description: description),
            SizedBox(height: 24.0.rh),
            Text(
              'Size',
              style: primarySemi16,
            ),
            SizedBox(height: 16.0.rh),
            const DetailCoffeeSizeWidget(),
            SizedBox(height: 24.0.rh),
          ],
        ),
      ),
      bottomNavigationBar: DetailBuyingWidget(
        url: image,
        title: title,
        subtitle: subtitle,
        price: price,
      ),
    );
  }
}
