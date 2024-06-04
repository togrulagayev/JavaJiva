import 'package:coffee_shop/providers/counter_provider.dart';
import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
      padding: EdgeInsets.symmetric(horizontal: 24.rw),
      child: AppBar(
        title: Text(
          'Order',
          style: primarySemi18,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/arrowBack.svg',
            width: 24.rw,
            height: 24.rh,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: EdgeInsets.only(top: 24.rh),
            child: Container(
              height: 43.rh,
              width: 327.rw,
              decoration: BoxDecoration(
                color: const Color(0xFFEDEDED),
                borderRadius: BorderRadius.all(
                  Radius.circular(12.rs),
                ),
              ),
              child: Consumer(
                builder: (context, ref, child) {
                  return TabBar(
                    dividerHeight: 0,
                    labelColor: const Color(0xFFFFFFFF),
                    indicator: BoxDecoration(
                      color: const Color(0xFFC67C4E),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.rs),
                      ),
                    ),
                    indicatorPadding: EdgeInsets.all(4.rs),
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: [
                      InkWell(
                        onTap: () {
                          ref.watch(orederTypeProvider.notifier).state = true;
                        },
                        child: Tab(
                          child: Text(
                            'Deliver',
                            style: GoogleFonts.sora(
                              fontSize: 16.rt,
                              height: kSecondaryLineHeight,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          ref.watch(orederTypeProvider.notifier).state = false;
                        },
                        
                        child: Tab(
                          child: Text(
                            'Pick Up',
                            style: GoogleFonts.sora(
                              fontSize: 16.rt,
                              height: kSecondaryLineHeight,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
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
