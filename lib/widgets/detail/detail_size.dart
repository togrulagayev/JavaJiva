import 'package:coffee_shop/constants/theme/const_colors.dart';
import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailCoffeeSizeWidget extends StatefulWidget {
  const DetailCoffeeSizeWidget({
    super.key,
  });

  @override
  State<DetailCoffeeSizeWidget> createState() => _DetailCoffeeSizeWidgetState();
}

class _DetailCoffeeSizeWidgetState extends State<DetailCoffeeSizeWidget> {
  final List<String> sizeList = ['S', 'M', 'L'];
  late Color borderColor;
  late Color bgColor;
  late int selectedIndex;

  @override
  void initState() {
    borderColor = const Color(0xffE3E3E3);
    bgColor = const Color(0xFFFFFFFF);
    selectedIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41.rh,
      width: 320.rw,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            splashFactory: NoSplash.splashFactory,
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 16.rw),
              width: 96.rw,
              height: 41.rh,
              constraints: BoxConstraints(minHeight: 41.rh, minWidth: 96.rw),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12.rs),
                ),
                border: Border.all(
                  color: selectedIndex == index
                      ? buttonBackgroudColor
                      : borderColor,
                ),
                color:
                    selectedIndex == index ? bgColor : const Color(0xFFFFFFFF),
              ),
              child: Center(
                child: Text(
                  sizeList[index],
                  style: GoogleFonts.sora(
                    fontSize: 14.rt,
                    fontWeight: FontWeight.normal,
                    color: primaryTextColor,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
