// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_shop/constants/theme/const_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/home/categories.dart';
import '../../widgets/home/grid.dart';
import '../../widgets/home/location.dart';
import '../../widgets/home/search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double sh = MediaQuery.of(context).size.height;
    final double sw = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: sw,
                  height: sh * 0.345,
                  decoration: const BoxDecoration(
                    // color: Color(0xFF111111),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF111111),
                        Color(0xFF111111),
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [.0, 1.0],
                      // tileMode: TileMode.decal,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: sw * 0.064,
                    right: sw * 0.064,
                    top: sh * 0.084,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HomeLocationWidget(),
                      const SizedBox(height: 24.0),
                      HomeSearchWidget(sh: sh, sw: sw),
                      const SizedBox(height: 24.0),
                      ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(16.0),
                        ),
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/banner.png',
                              fit: BoxFit.cover,
                              width: sw * 0.872,
                            ),
                            SvgPicture.asset(
                              'assets/icons/banner.svg',
                              width: sw * 0.872,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      HomeCategoriesWidget(sw: sw, sh: sh),
                      HomeGridWidget(sw: sw, sh: sh),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.white,
          onTap: (value) {},
          currentIndex: 0,
          iconSize: 24,
          selectedItemColor: buttonBackgroudColor,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/home.svg'),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/fav.svg'),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/bag.svg'),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/bell.svg'),
              label: 'Notification',
            ),
          ],
        ));
  }
}
