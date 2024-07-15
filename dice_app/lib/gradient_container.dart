
import 'package:dice_app/Stylecolor.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
    Color.fromARGB(255, 54, 217, 214),
    Color.fromARGB(255, 231, 50, 50),
    Color.fromARGB(255, 221, 46, 183),
  ];
    return Scaffold(
      body: StyleColor(colors)
    );
  }
}