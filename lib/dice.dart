import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_dice/header.dart';

// Stateful widgets will always have two classes

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() {
    return _DiceState();
  }
}

class _DiceState extends State<Dice> {
  final randomizer =
      Random(); // placing Random construction here uses less memory
  var activeDiceImage = 'assets/images/dice-2.png';

  void handleRollDice() {
    var newDiceValue = randomizer.nextInt(6) + 1; // 0 <> 5
    setState(() {
      activeDiceImage = 'assets/images/dice-$newDiceValue.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        Container(
          margin: const EdgeInsets.only(top: 50),
          child: ElevatedButton(
            onPressed: handleRollDice,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              padding:
                  const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
              foregroundColor: Colors.amber,
            ),
            child: const Header('Roll Dice'),
          ),
        ),
      ],
    );
  }
}
