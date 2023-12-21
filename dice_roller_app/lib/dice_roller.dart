import 'package:flutter/material.dart';
import 'dart:math';
  final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  
  var currentDiceRoll = 1;

  void rollDice() {
    setState(
      () {
        currentDiceRoll = randomizer.nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/dice_images/dice-$currentDiceRoll.png",
          width: 200.0,
        ),
        const SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: () {
            rollDice();
          },
          child: const Text(
            "Roll Dice",
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
