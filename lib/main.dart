import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PlayGround(),
    );
  }
}

class PlayGround extends StatefulWidget {
  const PlayGround({Key? key}) : super(key: key);

  @override
  State<PlayGround> createState() => _PlayGroundState();
}

class _PlayGroundState extends State<PlayGround> {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget container(Color color, int sound) {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: () {
            playSound(sound);
          },
          child: const Text(""),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          container(Colors.amber, 1),
          container(Colors.red, 2),
          container(Colors.orangeAccent, 3),
          container(Colors.pinkAccent, 4),
          container(Colors.redAccent, 5),
          container(Colors.cyan, 6),
          container(Colors.teal, 7),
          container(Colors.green, 8),
        ]),
      ),
    );
  }
}
