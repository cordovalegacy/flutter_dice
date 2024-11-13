import 'package:flutter/material.dart';
import 'package:flutter_dice/header.dart';

final gradientAlignment = {
  'begin': Alignment.topLeft,
  'end': Alignment.bottomRight
};

const gradientColors = [Colors.black87, Colors.black26, Colors.black87];

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  // If Flutter detects a custom widget in the widget tree, it will look for and invoke the build method
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: gradientAlignment['begin']!,
          end: gradientAlignment['end']!,
        ),
      ),
      child: const Center(
        child: Header(),
      ),
    );
  }
}
