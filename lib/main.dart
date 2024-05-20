import 'package:flutter/material.dart';

import 'screens/onboard/onboard_screen.dart';

void main() => runApp(const JavaJiveApp());

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
