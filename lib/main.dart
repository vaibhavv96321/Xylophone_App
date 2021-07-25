import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded exp({color, no}) {
    return Expanded(
      child: RawMaterialButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$no.wav');
        },
        fillColor: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              exp(color: Colors.red, no: 1),
              exp(color: Colors.orange, no: 2),
              exp(color: Colors.yellow, no: 3),
              exp(color: Colors.green, no: 4),
              exp(color: Colors.teal, no: 5),
              exp(color: Colors.blue, no: 6),
              exp(color: Colors.purple, no: 7),
            ],
          ),
        ),
      ),
    );
  }
}
