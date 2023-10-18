import 'package:flutter/material.dart';
import 'package:quiz/models/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return const SizedBox(
        width: double.infinity,
        // tool built into Dart - another way of saying to use as much space as we can
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('The question', style: TextStyle(color: Colors.white)),
            SizedBox(height: 30),
            AnswerButton(answerText: 'Answer 1 ', onTap: null)
          ],
        ));
  }
}
