import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            '                                                                                           Dicee',
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
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
  int leftDiceNumber = 4;
  int rightDiceNumber = 4;
  void changeDiceFace()
  {
    setState(() {
      rightDiceNumber = Random().nextInt(6);
      leftDiceNumber = Random().nextInt(6)   ;
      print("Button 1 tapped = $leftDiceNumber");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: GestureDetector(
                // ✅ no `const` here
                onTap: () {
                  changeDiceFace();
                },
                child: Image(
                  image: AssetImage('images/img_$leftDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  changeDiceFace();
                },
                child: Image(
                  image: AssetImage('images/img_$rightDiceNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
