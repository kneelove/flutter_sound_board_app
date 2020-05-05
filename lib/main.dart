import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: soundb(),
        backgroundColor: Colors.black,
      ),
    ),
  );
}

class soundb extends StatefulWidget {
  @override
  _soundbState createState() => _soundbState();
}

class _soundbState extends State<soundb> {
  final audi = AudioCache();
  Expanded createButton(Color color, int number) {
    return Expanded(
      child: FlatButton(
        child: Text('Click me'),
        color: color,
        onPressed: () {
          setState(() {
            audi.play('$number.mp3');
          });
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            createButton(Colors.amber, 0),
            createButton(Colors.deepPurple, 1),
            createButton(Colors.blueAccent, 2),
            createButton(Colors.lightGreen, 3)
          ],
        ),
      ),
    );
  }
}
