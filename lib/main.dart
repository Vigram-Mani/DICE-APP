import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(child: Text('Dice')),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceButton = 4;
  var rightDiceButton = 4;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onTap: () {
                buttonClicked();
              },
              child: Image.asset('images/dice$leftDiceButton.png'),
            ),
          ),
          Expanded(
              child: GestureDetector(
                  onTap: () {
                    buttonClicked();
                  },
                  child: Image.asset('images/dice$rightDiceButton.png'))),
        ],
      ),
    );
  }

  void buttonClicked() {
    setState(() {
      leftDiceButton = Random().nextInt(6) + 1;
      rightDiceButton = Random().nextInt(6) + 1;
    });
  }
}
