import 'package:coffee_shop/screens/onboard/onboard_screen.dart';
import 'package:flexify/flexify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(const ProviderScope(child: JavaJiveApp()));

class JavaJiveApp extends StatelessWidget {
  const JavaJiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexify(
      designHeight: 812,
      designWidth: 375,
      app: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xffF9F9F9),
        ),
        debugShowCheckedModeBanner: false,
        title: 'Java Jive',
        home: const OnboardScreen(),
      ),
    );
  }
}
