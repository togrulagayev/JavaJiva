// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_shop/constants/typography/const_text_styles.dart';
import 'package:coffee_shop/screens/order/order_screen.dart';
import 'package:flexify/flexify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/theme/const_colors.dart';

class DetailBuyingWidget extends StatelessWidget {
  final String url;

  final String title;
  final String subtitle;

  final double price;

  const DetailBuyingWidget({
    super.key,
    required this.url,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 118.rh,
      width: 375.rw,
      child: Card(
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.rs),
            topRight: Radius.circular(24.rs),
          ),
        ),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.rw, vertical: 20.0.rh),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price',
                    style: GoogleFonts.sora(
                      fontSize: 14.rt,
                      fontWeight: FontWeight.normal,
                      height: kSecondaryLineHeight,
                      color: const Color(0xff909090),
                    ),
                  ),
                  SizedBox(height: 8.0.rh),
                  Text(
                    '\$ $price',
                    style: GoogleFonts.sora(
                      color: buttonBackgroudColor,
                      fontSize: 18.rt,
                      fontWeight: FontWeight.bold,
                      height: kPrimaryLineHeight,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    buttonBackgroudColor,
                  ),
                  minimumSize: WidgetStateProperty.all(
                    Size(217.rw, 56.rh),
                  ),
                  padding: WidgetStateProperty.all(
                    EdgeInsets.symmetric(
                        horizontal: 24.0.rw, vertical: 16.0.rh),
                  ),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.rs),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => OrderScreen(
                        url: url,
                        title: title,
                        subtitle: subtitle,
                        price: price,
                      ),
                    ),
                  );
                },
                child: Text(
                  'Buy Now',
                  style: GoogleFonts.sora(
                    fontSize: 16.rt,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
