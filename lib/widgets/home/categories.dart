import 'package:coffee_shop/constants/theme/const_colors.dart';
import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';

import '../../constants/typography/const_text_styles.dart';
import '../../services/api_service.dart';

class HomeCategoriesWidget extends StatefulWidget {
  const HomeCategoriesWidget({
    super.key,
  });

  @override
  State<HomeCategoriesWidget> createState() => _HomeCategoriesWidgetState();
}

class _HomeCategoriesWidgetState extends State<HomeCategoriesWidget> {
  late int _selectedIndex;
  late Future<List<String>> _future;
  @override
  void initState() {
    _future = ApiService().getCoffeeTypes();
    _selectedIndex = 0;
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
          var data = snapshot.data!;
          return SizedBox(
            width: 327.rw,
            height: 35.rh,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              // shrinkWrap: true,
              itemCount: data.length,
              padding: EdgeInsets.all(4.rs),
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 16.0.rs),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        _selectedIndex == index
                            ? buttonBackgroudColor
                            : buttonForegroudColor,
                      ),
                      foregroundColor: WidgetStateProperty.all(
                        _selectedIndex == index
                            ? Colors.white
                            : const Color(0xFF313131),
                      ),
                      minimumSize: WidgetStateProperty.all(
                        Size(double.minPositive, 29.0.rh),
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0.rs),
                        ),
                      ),
                      textStyle: WidgetStateProperty.all(
                        _selectedIndex == index
                            ? categorySemi14
                            : categoryReg14,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Text(data[index].toUpperCase()),
                  ),
                );
              },
            ),
          );
        } else {
          return const Center(
            child: Text('No data'),
          );
        }
      },
    );
  }
}
