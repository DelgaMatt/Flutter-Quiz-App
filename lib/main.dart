import 'package:flutter/material.dart';

void main() {

  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color.fromARGB(255, 4, 53, 96),Color.fromARGB(190, 46, 7, 100)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight
              )
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/quiz-logo.png', width: 200,),
                TextButton( 
                  onPressed: null,
                  style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(top: 20),
                  foregroundColor: Colors.white, //Why cant i just access the white font via the TextStyles class listed below?
                  textStyle: const TextStyle(
                  fontSize: 28,
                )),
                  child: const Text('Start Quiz')
                )
              ],
        
              )
          )
        ),
      ),
    ),
  );
}