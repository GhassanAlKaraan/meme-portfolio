import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:just_audio/just_audio.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

late AudioPlayer player;
@override
void initState() {
  super.initState();
  player = AudioPlayer();
  _playAnthem();
}
@override
void dispose() {
  player.dispose();
  super.dispose();
}
  _playAnthem() async {
    await player.setAsset('assets/audio/lb.mp3');
    player.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            image: const DecorationImage(image: AssetImage('image/meme.jpg')),
            borderRadius: BorderRadius.circular(15),
            border: GradientBoxBorder(
              width: 3,
              gradient: LinearGradient(colors: [
                Colors.pink[400]!,
                Colors.yellow,
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
