import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("Dice"),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: DiceApplication(),
    ),
  ));
}

class DiceApplication extends StatefulWidget {
  const DiceApplication({Key? key}) : super(key: key);

  @override
  State<DiceApplication> createState() => _DiceApplicationState();
}

class _DiceApplicationState extends State<DiceApplication> {
  int l_dice = 3;
  int r_dice = 6;

  @override
  Widget build(BuildContext context) {

    int sum = l_dice+r_dice;

    void changeDice(){
      l_dice = Random().nextInt(6)+1;
      r_dice = Random().nextInt(6)+1;
    }

    return Center(
      child: SafeArea(
        child: Card(
          margin: const EdgeInsets.only(left: 20, right: 20),
          color: Colors.blue[700],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                splashColor: Colors.blue[900],
                icon: Image.asset(
                  'images/dice$l_dice.png',
                  color: Colors.black,
                ),
                iconSize: 100,
                onPressed: () {
                  setState(() {
                    changeDice();
                  });
                },
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(50),
                ),
                // color: Colors.blue[900],
                padding: const EdgeInsets.all(15),
                child: Center(
                  child: Text(
                    "$sum",
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              IconButton(
                splashColor: Colors.blue[900],
                icon: Image.asset(
                  'images/dice$r_dice.png',
                  color: Colors.black,
                ),
                iconSize: 100,
                onPressed: () {
                  setState(() {
                    changeDice();
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
