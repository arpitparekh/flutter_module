import 'package:flutter/material.dart';

void main() {
  runApp(const CardApp());
}

class CardApp extends StatelessWidget {
  const CardApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[500],
        appBar: AppBar(
          title: const Text("My Card"),
          centerTitle: true,
          backgroundColor: Colors.blue[900],
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
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
              const SizedBox(
                height: 10,
              ),
              Card(
                margin: const EdgeInsets.only(left: 50,right: 50),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: const [
                      Icon(Icons.phone),
                      SizedBox(
                        width: 20,
                      ),
                      Text("+91 9601397062")
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Card(
                margin: EdgeInsets.only(left: 50,right: 50),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                  ),
                  title: Text("+91 9601397062"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
