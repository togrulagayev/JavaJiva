import 'package:coffee_shop/constants/typography/const_text_styles.dart';
import 'package:coffee_shop/screens/detail/detail_screen.dart';
import 'package:coffee_shop/services/api_service.dart';
import 'package:flexify/flexify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/theme/const_colors.dart';
import '../../model/types_model.dart';

class HomeGridWidget extends StatefulWidget {
  const HomeGridWidget({
    super.key,
  });

  @override
  State<HomeGridWidget> createState() => _HomeGridWidgetState();
}

class _HomeGridWidgetState extends State<HomeGridWidget> {
  late Future<List<CoffeeModel>> _future;
  @override
  void initState() {
    _future = ApiService().getCappucino();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _future,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Snapshot error: ${snapshot.error}'),
            );
          } else if (snapshot.hasData) {
            final data = snapshot.data!;
            return SizedBox(
              height: 320.rh,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 250.rh,
                  crossAxisSpacing: 15.rs,
                  mainAxisSpacing: 24.rs,
                ),
                itemCount: data.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => DetailScreen(
                            description: data[index].description,
                            image: data[index].imageUrl,
                            title: data[index].title,
                            subtitle: data[index].subTitle,
                            rating: data[index].rating.toString(),
                            votes: data[index].voteCount.toString(),
                            price: data[index].price,
                          ),
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0.rs),
                      ),
                      child: Card(
                        color: Colors.white,
                        elevation: 4,
                        child: Padding(
                          padding: EdgeInsets.all(8.0.rs),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12.0.rs),
                                  ),
                                  child: Stack(
                                    children: [
                                      Image.network(
                                        data[index].imageUrl,
                                        height: 140.rh,
                                        width: 128.rw,
                                        fit: BoxFit.cover,
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          width: 51.rw,
                                          height: 28.rh,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                const Color(0xFF111111)
                                                    .withOpacity(0.3),
                                                const Color(0xFF111111)
                                                    .withOpacity(0.3),
                                              ],
                                              begin: Alignment.topRight,
                                              end: Alignment.bottomLeft,
                                            ),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft:
                                                  Radius.circular(14.rs),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Row(
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/icons/star.svg',
                                                  width: 12.rw,
                                                  height: 12.rh,
                                                ),
                                                SizedBox(width: 4.rw),
                                                Text(
                                                  data[index].rating.toString(),
                                                  style: GoogleFonts.sora(
                                                    color: Colors.white,
                                                    fontSize: 12.rt,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 8.rh),
                              Text(
                                data[index].title,
                                style: primarySemi16,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              SizedBox(height: 4.rh),
                              Text(
                                data[index].subTitle,
                                style: primarySemi12,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              // const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$ ${data[index].price}',
                                    style: primarySemi18,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                  SizedBox(width: 32.rw),
                                  SizedBox(
                                    height: 32.rh,
                                    width: 32.rw,
                                    child: IconButton.filled(
                                      iconSize: 16.rs,
                                      style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                                buttonBackgroudColor),
                                        shape: WidgetStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0.rs),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      icon: const Icon(Icons.add),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          } else {
            return const Center(
              child: Text('No data found!'),
            );
          }
        });
  }
}
