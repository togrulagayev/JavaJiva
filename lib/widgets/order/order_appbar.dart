import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/typography/const_text_styles.dart';

class OrderAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const OrderAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: AppBar(
        title: Text(
          'Order',
          style: primarySemi18,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/arrowBack.svg',
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Container(
              height: 43,
              decoration: const BoxDecoration(
                color: Color(0xFFEDEDED),
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: TabBar(
                dividerHeight: 0,
                labelColor: const Color(0xFFFFFFFF),
                indicator: const BoxDecoration(
                  color: Color(0xFFC67C4E),
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                indicatorPadding: const EdgeInsets.all(4),
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    child: Text(
                      'Deliver',
                      style: GoogleFonts.sora(
                        fontSize: 16,
                        height: 1.2,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Pick Up',
                      style: GoogleFonts.sora(
                        fontSize: 16,
                        height: 1.2,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 2);
}
