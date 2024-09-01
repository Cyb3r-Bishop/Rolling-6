import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var currentDiceRoll = 1;
  var isRolling = false;

  void rollDice() async {
    setState(() {
      isRolling = true; // Start the animation
    });

    await Future.delayed(const Duration(seconds: 1)); // Animation duration

    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
      isRolling = false; // Stop the animation
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (isRolling)
          Lottie.asset(
            'assets/Animation - 1725099253962.json',
            width: 200,
            height: 200,
            repeat: false, // Play the animation once
          )
        else
          Image.asset(
            'assets/dice-$currentDiceRoll.png',
            width: 200,
          ),
        const SizedBox(height: 20),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.yellow.shade400,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          onPressed: rollDice,
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
