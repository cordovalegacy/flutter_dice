import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header(this.heading, {super.key});

  final String heading;

  @override
  Widget build(context) {
    return Text(
      heading,
      style: const TextStyle(
        color: Colors.amber,
        fontSize: 30,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
