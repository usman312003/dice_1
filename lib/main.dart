import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: Image(
            image: AssetImage('images/img.png'),
          ),
          ),

        Expanded(
          flex: 1,

            child: Image(
            image: AssetImage('images/img.png'),
            ),
        ),
    ],
    );
  }
}
