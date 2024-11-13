import 'package:flutter/material.dart';
import 'package:flutter_dice/gradient_container.dart';

// main is automatically invoked by Flutter
void main() {
  // runApp is the entry point for the app
  runApp(
    // const allows Dart to store variable in memory (cache)
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}
