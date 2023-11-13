/* Created class to create blueprint for accessing
   questions and answers from questions.dart file
   
   Class does not extend because it is not a widget*/

//->Links to questions.dart;
class QuizQuestion {
  const QuizQuestion(this.text, this.answers); //Positional properties;

  final String text;
  final List<String> answers;

/*Shuffled lists
  Create function
  Set final variable to List.of(another list)
  Use shuffle method on variable
  Return the variable*/

  getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
