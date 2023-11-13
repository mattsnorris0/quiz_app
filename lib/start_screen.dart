import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//->Class Name;
class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, //Positional property;
      {super.key,
      required this.buttonText,
      required this.text}); //Named properties;

  final void Function() startQuiz; //->Function for onPressed;
  final String text; //->Main text variable;
  final String buttonText; //->Button text variable;

  //->Widget Tree;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(200, 255, 255, 255),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            text,
            style: GoogleFonts.lato(
              color: const Color.fromARGB(200, 255, 255, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                width: 1.5,
                color: Colors.white,
              ),
              foregroundColor: Colors.white,
            ),
            icon: const Icon(
              Icons.arrow_right_alt,
              size: 40,
            ),
            label: Text(
              buttonText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
