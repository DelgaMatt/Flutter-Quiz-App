import 'package:flutter/material.dart';
import 'package:quiz/data/questions_list.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Container(
            margin: const EdgeInsets.all(40),
            child: const Column(
              children: [
                Text('you answered x out of y questions correctly'),
                SizedBox(
                  height: 30,
                ),
                Text('list of answers and questions'),
                SizedBox(
                  height: 30,
                ),
                TextButton(onPressed: null, child: Text('Restart Quiz'))
              ],
            )));
  }
}
