import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent.shade400,
      appBar: AppBar(
        title: const Text("Dice"),
        backgroundColor: Colors.red,
      ),
      body: const DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDice = 1;
  var rightDice = 1;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(
                onPressed: () {
                  setState(() {
                    leftDice = random.nextInt(6) + 1;
                  });
                },
                child: Image.asset("images/dice$leftDice.png")),
          ),
          Expanded(
            child: MaterialButton(
                onPressed: () {
                  setState(() {
                    rightDice = random.nextInt(6) + 1;
                  });
                },
                child: Image.asset("images/dice$rightDice.png")),
          ),
        ],
      ),
    );
  }
}
