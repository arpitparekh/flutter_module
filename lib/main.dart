import 'package:flutter/material.dart';

void main() {
  // starting point for all our application
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepOrange[500],
        appBar: AppBar(
          centerTitle: true,
          title: const Text("I'm Rich"),
          backgroundColor: Colors.deepOrange[900],
        ),
        body: const Center(
          child: Image(
            image: AssetImage("images/flower.jpg"),
            height: 300,
            width: 300,
          ),
          // child: Image(
          //   image: NetworkImage(
          //       'https://i.picsum.photos/id/287/536/354.jpg?hmac=Q7SHhMnm1VMUbuc4HRY_rIBRPVOV4zTxKQuaGH8eeTE'),
          // ),
        ),
      ),
    ),
  );
}
