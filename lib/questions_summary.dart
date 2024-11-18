import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/result_screen.dart';

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
            Text(((data['question_index'] as int) + 1).toString()),
                Expanded(
                  child: Column(children: [
                    Text(data['question'] as String),
                    SizedBox(height: 5,),
                    Text(data['user_answer'] as String),
                    const SizedBox(height: 5,),
                    Text(data['correct_answer'] as String),
                  ],),
                )// Assuming you want to display data as a string
              ],
            );
          }).toList(), // Add .toList() to convert map results to a list
        ),
      ),
    );
  }
}
