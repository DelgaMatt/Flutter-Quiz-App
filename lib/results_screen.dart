import 'package:flutter/material.dart';
import 'package:quiz/data/questions_list.dart';
import 'package:quiz/models/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(this.startQuiz, {super.key, required this.chosenAnswers});

  final void Function() startQuiz;
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
    // I dont ever remember naming my index's in for loops with JS.
    // Do i have to name them? is is this just the way we are choosing to retrieve this data?

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
      // this above will automatically return a boolean value
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: Color.fromARGB(192, 255, 255, 255),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                disabledForegroundColor: Colors.white,
              ),
              icon: const Icon(Icons.restart_alt_rounded),
              label: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
