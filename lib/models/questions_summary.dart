// Text(((data['question_index'] as int) + 1).toString()),

import 'package:flutter/material.dart';


class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 400,
        child: SingleChildScrollView(
          child: Column(
            children: summaryData.map((data) {
              return Row(
                children: [
                CircleAvatar(
                  
                  backgroundColor: const Color.fromARGB(255, 241, 120, 160),
                  foregroundColor: Colors.black,
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                  ),
                ),
                const SizedBox(width: 25),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        data['user_answer'] as String,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 229, 115, 249),
                            fontSize: 14),
                      ),
                      Text(data['correct_answer'] as String,
                          style: const TextStyle(color: Colors.lightBlue)),
                      const SizedBox(height: 10),
                    ],
                  ),
                )
              ]);
            }).toList(),
          ),
        ));
  }
}
