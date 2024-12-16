import 'package:flutter/material.dart';
import 'package:flutter_dice/gradient_container.dart';

// main is automatically invoked by Flutter
void main() {
  // runApp is the entry point for the app
  const gradientColors = [Colors.black87, Colors.black26, Colors.black87];

  const gradientAlignment = GradientAlignment(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  runApp(
    // const allows Dart to store variable in memory (cache)
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          gradientColors,
          gradientAlignment: gradientAlignment,
        ),
      ),
    ),
  );
}
