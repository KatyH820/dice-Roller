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
    int number = random.nextInt(5);
    setState(() {
      if (number == 0) {
        activeDiceImage = 'assets/images/dice1.png';
      } else if (number == 1) {
        activeDiceImage = 'assets/images/dice2.png';
      } else if (number == 2) {
        activeDiceImage = 'assets/images/dice3.png';
      } else if (number == 3) {
        activeDiceImage = 'assets/images/dice4.png';
      } else if (number == 4) {
        activeDiceImage = 'assets/images/dice-05.png';
      } else if (number == 5) {
        activeDiceImage = 'assets/images/dice6.png';
      }
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
