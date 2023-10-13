import 'package:flutter/material.dart';
import 'package:quiz/start_screen.dart';

void main() {

  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 4, 53, 96),
              Color.fromARGB(190, 46, 7, 100)
            ], 
            begin: Alignment.topLeft, 
            end: Alignment.bottomRight),
            ),
          child: const StartScreen(),
          )
      ),
    ),
  );
}