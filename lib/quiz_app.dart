import 'package:flutter/material.dart';

void main() {
  runApp( QuizApp());
}

class QuizApp extends StatefulWidget {

  QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {

  List<Widget> scoreKeeper = [];

  List<String> questions=[
    'Dart has multiple interfaces.',
    'Algorithm is the graphical representation of logic.',
    'Dart is Object Oriented Language.',
    'Only character or integer can be used in switch statement in C.',
    'Functions cannot return more than one value at a time in C',
    'If return type for a function is not specified, it defaults to float in C'
  ];
  List<bool> answers=[
    true,false,true,false,true,false
  ];

  int questionNumber = 0;

  String check(){
    if(questionNumber<6){
      return questions[questionNumber];
    }else{
      return 'No More Questions';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('quiz app'),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    check(),
                    style: const TextStyle(
                        color: Colors.white, fontSize: 20, fontFamily: 'Noto'),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if(questionNumber<6){
                        bool answer = answers[questionNumber];
                        if(answer==true){
                          scoreKeeper.add(const Icon(Icons.check,color:Colors.green));
                        }else{
                          scoreKeeper.add(const Icon(Icons.close,color:Colors.red));
                        }
                      }
                      questionNumber++;
                    });
                  },
                  child: Ink(
                    height: 90,
                    color: Colors.green,
                    child: const Center(
                      child: Text(
                        'True',
                        style: TextStyle(fontSize: 50, fontFamily: 'Noto'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if(questionNumber<6){
                        bool answer = answers[questionNumber];
                        if(answer==false){
                          scoreKeeper.add(const Icon(Icons.check,color:Colors.green));
                        }else{
                          scoreKeeper.add(const Icon(Icons.close,color:Colors.red));
                        }
                      }
                      questionNumber++;

                    });
                  },
                  child: Ink(
                    height: 90,
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        'False',
                        style: TextStyle(fontSize: 50, fontFamily: 'Noto'),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: scoreKeeper,
            )
          ],
        ),
      ),
    );
  }
}
