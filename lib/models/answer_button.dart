import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap
    });

  final String answerText;
  final void Function() ?onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        backgroundColor: const Color.fromARGB(255, 24, 5, 70),
        foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))),
      child: Text(
        answerText,
        textAlign: TextAlign.center,
        ),
    );
  }
}

// above, 'foregroundColor' wouldn't work for me but 'disabledForegroundColor' did work for me. What's up with that?
// This situation changed after i added state to the questions screen?