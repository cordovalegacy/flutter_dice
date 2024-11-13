import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(context) {
    return const Text(
      'Flutter Dice',
      style: TextStyle(
        color: Colors.blueAccent,
        fontSize: 50,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
