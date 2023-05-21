import 'package:flutter/material.dart';
import 'package:dice_roller/styled_text.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice6.png';

  void rollDice() {
    Random random = Random();
    int number = random.nextInt(5) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice$number.png';
    });
  }

  @override
  Widget build(contex) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const StyledText(text: '☁️ Roll a Dice ☁︎', size: 48),
        Image.asset(
          activeDiceImage,
          width: 200,
          height: 250,
        ),
        const SizedBox(height: 25),
        ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(6.0)),
            child: const StyledText(text: 'Roll', size: 25))
      ],
    );
  }
}
