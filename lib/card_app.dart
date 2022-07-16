import 'package:flutter/material.dart';

void main() {
  runApp(const Card());
}

class Card extends StatelessWidget {
  const Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[500],
        appBar: AppBar(
          title: const Text("My Card"),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        body: SafeArea(
          child: Column(
            children: [
              const CircleAvatar(
                radius: 60.0,
                // backgroundColor: Colors.red,
                backgroundImage: AssetImage("images/profile.jpg"),
              ),
              const Text(
                "Arpit Parekh",
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Pacifico"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("MOBILE DEVELOPER",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                fontFamily: "Noto"
                ),
              ),
              Row(
                children: [
                  Icon(Icons.phone),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
