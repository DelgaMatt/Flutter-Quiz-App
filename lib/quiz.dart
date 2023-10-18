import 'package:flutter/material.dart';
import 'package:quiz/questions_screen.dart';
import '/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';
  // '?' means the value can be null

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  //above we have passed the 'switchScreen' function to the 'StartScreen' widget, giving the start screen access to the 'state'. So when the button is clicked on the start screen, it triggers the 'StartQuiz' function variable declared on the startScreen file, which we've set to be the value of our switch screen function, triggering the change.

  //It's a little confusing that the startquiz parameter is named something other than the function value we are actually passing to it. Can they be named the same thing?

  @override
  Widget build(context) {
    // final screenWidget = activeScreen == 'start-screen'
    //     ? StartScreen(switchScreen)
    //     : const QuestionsScreen();

    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 4, 53, 96),
            Color.fromARGB(214, 31, 4, 69)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: screenWidget,
      )),
    );
  }
}
