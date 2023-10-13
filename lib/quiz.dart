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
  Widget? activeScreen;
  // '?' means the value can be null

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 4, 53, 96),
            Color.fromARGB(190, 46, 7, 100)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: activeScreen,
      )),
    );
  }
}
