// import 'package:coffee_shop/constants/theme/const_colors.dart';
// import 'package:coffee_shop/services/api_service.dart';
// import 'package:flutter/material.dart';

// class HomeGridWidget extends StatefulWidget {
//   const HomeGridWidget({
//     super.key,
//     required this.sw,
//     required this.sh,
//   });

//   final double sw;
//   final double sh;

//   @override
//   State<HomeGridWidget> createState() => _HomeGridWidgetState();
// }

// class _HomeGridWidgetState extends State<HomeGridWidget> {
//   late Future _future;
//   @override
//   void initState() {
//     _future = ApiService().getCappucino();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: _future,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(
//               child: CircularProgressIndicator.adaptive(),
//             );
//           } else if (snapshot.hasError) {
//             return Center(
//               child: Text('Snapshot error: ${snapshot.error}'),
//             );
//           } else if (snapshot.hasData) {
//             final data = snapshot.data!;
//             return SizedBox(
//               height: 300,
//               width: 327,
//               child: GridView.builder(
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   mainAxisExtent: 250,
//                 ),
//                 itemCount: data.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Container(
//                     width: 156,
//                     height: 238,
//                     color: buttonForegroudColor,
//                     child: Column(
//                       children: [
//                         Stack(
//                           children: [
//                             Image.network(data[index].imageUrl),
//                           ],
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             );
//           } else {
//             return const Center(
//               child: Text('No data found!'),
//             );
//           }
//         });
//   }
// }
