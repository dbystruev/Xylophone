import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final _player = AudioCache();

  @override
  Widget build(BuildContext context) {
    final colors = [
      Colors.redAccent,
      Colors.orangeAccent,
      Colors.yellowAccent,
      Colors.greenAccent,
      Colors.cyanAccent,
      Colors.blueAccent,
      Colors.indigo,
    ];

    final buttons = Iterable.generate(
      colors.length,
      (index) => Expanded(
        child: FlatButton(
          color: colors[index],
          onPressed: () => _player.play(
            'note${index + 1}.wav',
          ),
        ),
      ),
    ).toList();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: buttons,
            crossAxisAlignment: CrossAxisAlignment.stretch,
          ),
        ),
      ),
    );
  }
}
