import 'package:flutter/material.dart';

void main() {
  runApp(const Challenge());
}

class Layouts extends StatelessWidget {
  const Layouts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightGreen[700],
        appBar: AppBar(
          title: const Text("layouts"),
          centerTitle: true,
          backgroundColor: Colors.lightGreen[900],
        ),
        body: SafeArea(
          // if there is no appbar put container in safe area
          child: Container(
            height: 100,
            width: 100,
            // margin: const EdgeInsets.symmetric(vertical: 50,horizontal: 50),
            // margin: const EdgeInsets.fromLTRB(50, 50, 10, 10),
            margin: const EdgeInsets.only(left: 50),
            padding: const EdgeInsets.all(10),
            color: Colors.deepOrange[500],
            child: const Text("This is text inside container"),
          ),
        ),
      ),
    );
  }
}

class ColumnDemo extends StatelessWidget {
  const ColumnDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple[700],
        appBar: AppBar(
          backgroundColor: Colors.purple[900],
          title: const Text("Column Widgets"),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Column(
          // mainAxisSize: MainAxisSize.min,
          // verticalDirection: VerticalDirection.up,
          // mainAxisAlignment: MainAxisAlignment.end,
          // mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment:
              CrossAxisAlignment.stretch, // all child will stretch to width
          children: [
            Container(
              color: Colors.lightGreen,
              height: 100,
              width: 100,
              // margin: const EdgeInsets.only(left:20,top: 30),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10.0),
              child: const Text("Container 1"),
            ),
            const SizedBox(
              // give space between containers
              height: 20,
            ),
            Container(
              color: Colors.amber,
              height: 50,
              width: 50,
              // margin: const EdgeInsets.only(left:20,top: 30),
              margin: const EdgeInsets.all(10),
              // padding: const EdgeInsets.all(5.0),
              child: const Text("Container 2"),
            ),
            Container(
              color: Colors.deepOrange,
              height: 200,
              width: 200,
              // margin: const EdgeInsets.only(left:20,top: 30),
              // margin: const EdgeInsets.all(10),
              // padding: const EdgeInsets.all(5.0),
              child: const Text("Container 3"),
            ),
            Container(
              color: Colors.lightGreenAccent,
              height: 100,
              width: 100,
              // margin: const EdgeInsets.only(left:20,top: 30),
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(5.0),
              child: const Text("Container 4"),
            ),
            Container(
              width: double.infinity, // max width
            ),
          ],
        )),
      ),
    );
  }
}

class RowDemo extends StatelessWidget {
  const RowDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Row Widgets"),
          centerTitle: true,
          backgroundColor: Colors.indigo[900],
        ),
        backgroundColor: Colors.indigo[500],
        body: SafeArea(
          child: Row(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                color: Colors.lightGreenAccent,
                width: 100,
                margin: const EdgeInsets.only(top: 20, right: 20),
                padding: const EdgeInsets.all(10),
                child: const Text("Container 1"),
              ),
              const SizedBox(
                // used to give space between containers
                width: 20,
              ),
              Container(
                height: 100,
                color: Colors.lightGreenAccent,
                width: 100,
                margin: const EdgeInsets.only(top: 20, right: 20),
                padding: const EdgeInsets.all(10),
                child: const Text(
                  "Container 1",
                  textAlign: TextAlign.right,
                ),
              ),
              Container(
                height: 100,
                color: Colors.lightGreenAccent,
                width: 100,
                margin: const EdgeInsets.only(top: 20, right: 20),
                padding: const EdgeInsets.all(10),
                child: const Center(
                  child: Text(
                    "Container 1",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Container(
                height: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Challenge extends StatelessWidget {
  const Challenge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: const Text("Challenge"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.red,
                width: 100,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                  )
                ],
              ),
              Container(
                color: Colors.blue,
                width: 100,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
