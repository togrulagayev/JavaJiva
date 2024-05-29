import 'package:coffee_shop/constants/typography/const_text_styles.dart';
import 'package:coffee_shop/screens/detail/detail_screen.dart';
import 'package:coffee_shop/services/api_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/theme/const_colors.dart';
import '../../model/types_model.dart';

class HomeGridWidget extends StatefulWidget {
  const HomeGridWidget({
    super.key,
    required this.sw,
    required this.sh,
  });

  final double sw;
  final double sh;

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
              height: widget.sh * 0.4,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: widget.sh * 0.3,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 24,
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
                          ),
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(16.0),
                      ),
                      child: Card(
                        color: Colors.white,
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(12.0),
                                  ),
                                  child: Stack(
                                    children: [
                                      Image.network(
                                        data[index].imageUrl,
                                        height: 150,
                                        fit: BoxFit.cover,
                                      ),
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Container(
                                          width: widget.sw * 0.135,
                                          height: widget.sh * 0.034,
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
                                            borderRadius:
                                                const BorderRadius.only(
                                              bottomLeft: Radius.circular(14),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 8.0),
                                            child: Row(
                                              children: [
                                                SvgPicture.asset(
                                                  'assets/icons/star.svg',
                                                  width: widget.sh * 0.017,
                                                  height: widget.sh * 0.017,
                                                ),
                                                const SizedBox(width: 4),
                                                Text(
                                                  data[index].rating.toString(),
                                                  style: GoogleFonts.sora(
                                                      color: Colors.white,
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700),
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
                              const SizedBox(height: 8),
                              Text(
                                data[index].title,
                                style: primarySemi16,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                              ),
                              const SizedBox(height: 4),
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
                                  SizedBox(width: widget.sw * 0.085),
                                  SizedBox(
                                    height: widget.sh * 0.039,
                                    width: widget.sw * 0.085,
                                    child: IconButton.filled(
                                      iconSize: 16,
                                      style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                                buttonBackgroudColor),
                                        shape: WidgetStateProperty.all(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
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
