import 'package:coffee_shop/screens/onboard/onboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() => runApp(const ProviderScope(child: JavaJiveApp()));

class JavaJiveApp extends StatelessWidget {
  const JavaJiveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Java Jive',
      home: OnboardScreen(),
    );
  }
}
