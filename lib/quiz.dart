import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/results_screen.dart';

//->Lifted state class to hold other custom widgets;
class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen'; //->Initial value for activeScreen;

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen'; //->Value given when onPressed;
      // selectedAnswers = [];
    });
  }

  void chosenAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  void restartScreen() {
    setState(() {
      activeScreen = 'questions-screen'; //->Value given when onPressed;
      selectedAnswers = [];
    });
  }

  @override
  //->Widget variable (screenWidget);
  Widget build(context) {
    Widget screenWidget = StartScreen(
      switchScreen,
      text: 'Learn Flutter the fun way!',
      buttonText: 'Start Quiz',
    );

    //->If/else statement for deciding displayed screen;
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectedAnswer: chosenAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        restartScreen,
        resultAnswers: selectedAnswers,
      );
    }

    //->Widget Tree;
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 31, 19, 62), Colors.deepPurple],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
