import 'package:coffee_shop/constants/theme/const_colors.dart';
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
      height: 50,
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
              margin: const EdgeInsets.only(right: 30),
              width: 96,
              height: 41,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
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
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: primaryTextColor),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
