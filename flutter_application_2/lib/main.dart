import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Row(
          children: [
            Column(1, Colors.yellow),
            Column(2, Colors.black),
            Column(3, Colors.purple),
            Column(4, Colors.cyan),
            Column(5, Colors.orange),
            Column(6, Colors.red),
            Column(7, Colors.lightGreen)
          ],
        ),
      ),
    ));
  }
}

Expanded Column(int i, Color c) {
  return Expanded(
      child: Container(
    height: double.infinity,
    color: c,
    child: TextButton(
      onPressed: () {
        AudioPlayer audioPlayer = AudioPlayer();
        audioPlayer.play('assets/note$i.wav');
      },
      child: Text(""),
    ),
  ));
}
