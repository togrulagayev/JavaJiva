// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_shop/constants/theme/const_colors.dart';
import 'package:flexify/flexify.dart';
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
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 375.rw,
                  height: 280.rh,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFF111111),
                        const Color(0xFF111111).withOpacity(0.90),
                      ],
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,

                      // tileMode: TileMode.decal,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 24.0.rw,
                    right: 24.0.rw,
                    top: 68.0.rh,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HomeLocationWidget(),
                      SizedBox(height: 24.0.rh),
                      const HomeSearchWidget(),
                      SizedBox(height: 24.0.rh),
                      ClipRRect(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16.0.rs),
                        ),
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/images/banner.png',
                              fit: BoxFit.cover,
                              width: 327.rw,
                              height: 120.rh,
                            ),
                            SvgPicture.asset(
                              'assets/icons/banner.svg',
                              width: 327.rw,
                              height: 120.rh,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 24.rh),
                      const HomeCategoriesWidget(),
                      const HomeGridWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: Container(
          height: 99.rh,
          width: 375.rw,
          decoration: const BoxDecoration(),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: Colors.white,
            onTap: (value) {},
            currentIndex: 0,
            iconSize: 24.rs,
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
          ),
        ));
  }
}
