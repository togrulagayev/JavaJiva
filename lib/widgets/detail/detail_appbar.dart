import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/typography/const_text_styles.dart';

class DetailAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const DetailAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.0.rw, right: 24.0.rw),
      child: AppBar(
        title: Text(
          'Detail',
          style: primarySemi16,
        ),
        centerTitle: true,
        leading: IconButton(
          iconSize: 24.rs,
          icon: SvgPicture.asset('assets/icons/arrowBack.svg'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            iconSize: 24.rs,
            icon: SvgPicture.asset('assets/icons/fav.svg'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
