import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MaterialApp(
    home: const BallPage(),
  ),);
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text(
          'Ask Me  Anything',
          style: TextStyle(color: Colors.white),
          ),
      ),
      body:const Ball(),
    );
  }
}
class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int click=1;
  void clickFonction(){
    click=Random().nextInt(5)+1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(onPressed: () {
        setState(() {
          clickFonction();
          print(click);
        });    },
        
        child: Image.asset('images/ball$click.png')),

    );
  }
}
