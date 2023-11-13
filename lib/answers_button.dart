import 'package:flutter/material.dart';

class AnswersButton extends StatelessWidget {
  const AnswersButton(this.answerText, this.onTap, {super.key});

  final String answerText;
  final void Function() onTap; // Pointer function (No parameters needed) //

  //->Widget Tree<-//
  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: const Color.fromARGB(255, 149, 69, 120),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
