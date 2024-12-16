import 'package:flutter/material.dart';
import 'package:flutter_dice/dice.dart';

class GradientAlignment {
  const GradientAlignment({required this.begin, required this.end});

  final Alignment begin;
  final Alignment end;
}

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.gradientColors,
      {super.key, required this.gradientAlignment});

  final List<Color> gradientColors;
  final GradientAlignment gradientAlignment;

  @override
  // If Flutter detects a custom widget in the widget tree, it will look for and invoke the build method
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: gradientAlignment.begin,
          end: gradientAlignment.end,
        ),
      ),
      child: const Center(
        child: Dice(),
      ),
    );
  }
}
