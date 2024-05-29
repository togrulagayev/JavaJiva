import 'package:coffee_shop/screens/order/order_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/theme/const_colors.dart';

class DetailBuyingWidget extends StatelessWidget {
  const DetailBuyingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: Card(
        margin: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price',
                    style: GoogleFonts.sora(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      height: 1.2,
                      color: const Color(0xff909090),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    '\$ 4.50',
                    style: GoogleFonts.sora(
                        color: buttonBackgroudColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        height: 1.5),
                  ),
                ],
              ),
              const SizedBox(width: 36.0),
              Expanded(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(
                      buttonBackgroudColor,
                    ),
                    padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 16.0),
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const OrderScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Buy Now',
                    style: GoogleFonts.sora(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
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
