import 'package:flutter/material.dart';
import 'package:dice_roller/gradient_container.dart';

void main() {
  //const allow run and build our app efficiency
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 103, 175, 234),
            Color.fromARGB(255, 177, 229, 235)
          ],
        ),
      ),
    ),
  );
}
