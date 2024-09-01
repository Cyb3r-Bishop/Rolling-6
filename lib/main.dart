import 'package:flutter/material.dart';
import 'package:rolling_dice_6/components/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(
          Colors.purple,
          Colors.deepPurple,
        ),
      ),
    );
  }
}