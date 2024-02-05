import 'dart:math';

import 'package:flutter/material.dart';

class RollDice extends StatefulWidget {
  const RollDice({super.key});
  @override
  State<RollDice> createState() {
    return RollDiceState();
  }
}

class RollDiceState extends State<RollDice> {
  var imagenow = 'assets/images/dice6.png';
  var current;
  void rolldice() {
    setState(() {
      current = Random().nextInt(6) + 1;
      imagenow = 'assets/images/dice$current.png';
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        width: 200,
        height: 200,
        child: Image.asset(imagenow, color: Colors.yellowAccent, width: 200),
      ),
      const SizedBox(height: 100),
      TextButton(
        onPressed: rolldice,
        style: TextButton.styleFrom(
          backgroundColor: Colors.yellowAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: const Text(
          'Roll the Dice!',
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      )
    ]);
  }
}
