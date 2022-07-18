import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(const MagicBall());
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  
  int number = 1;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red[400],
        appBar: AppBar(
          title: const Text('Magic Ball'),
          centerTitle: true,
          backgroundColor: Colors.red[900],
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            child: IconButton(
              icon: Image.asset("images/ball$number.png"),
              onPressed: () {
                setState(() {
                  number = Random().nextInt(5)+1;
                });
              } ,
            ),
          ),
        ),
      ),
    );
  }
}
