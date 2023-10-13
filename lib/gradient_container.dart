import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 4, 53, 96),
          Color.fromARGB(190, 46, 7, 100)
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
            ),
            const Text('Learn Flutter the fun way!'),
            TextButton(
                onPressed: null,
                style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(10),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(
                      fontSize: 28,
                    )),
                child: const Text('Start Quiz'))
          ],
        )
      )
    );
  }
}
