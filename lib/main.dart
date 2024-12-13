import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MagicBallPage());
}

class MagicBallPage extends StatefulWidget {
  const MagicBallPage({super.key});

  @override
  State<MagicBallPage> createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int indexImage = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          elevation: 4,
          backgroundColor: Colors.blue.shade900,
          shadowColor: Colors.blue.shade500,
          title: Center(
            child: Text(
              'Ask me anything',
              style: TextStyle(
                color: Colors.lightBlue.shade100,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: TextButton(
              style: ButtonStyle(
                  overlayColor: WidgetStateProperty.all(Colors.transparent)),
              onPressed: () {
                setState(() {
                  indexImage = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset(
                'images/ball$indexImage.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
