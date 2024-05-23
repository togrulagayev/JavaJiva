import 'package:coffee_shop/constants/theme/const_colors.dart';
import 'package:flutter/material.dart';

import '../../services/api_service.dart';

class HomeCategoriesWidget extends StatefulWidget {
  const HomeCategoriesWidget({
    super.key,
    required this.sw,
    required this.sh,
  });

  final double sw;
  final double sh;

  @override
  State<HomeCategoriesWidget> createState() => _HomeCategoriesWidgetState();
}

class _HomeCategoriesWidgetState extends State<HomeCategoriesWidget> {
  late int _selectedIndex;
  late Future _future;
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
            width: widget.sw * 0.872,
            height: widget.sh * 0.037,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              // shrinkWrap: true,
              itemCount: data.length,
              padding: const EdgeInsets.all(4),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        _selectedIndex == index
                            ? buttonBackgroudColor
                            : buttonForegroudColor,
                      ),
                      shape: WidgetStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
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
