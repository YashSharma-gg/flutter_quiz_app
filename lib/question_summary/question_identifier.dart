import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({required this.data, super.key});

  final Map<String, Object> data;
  @override
  Widget build(context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: data['correct_answer'] == data["user_answer"]
            ? Colors.blueAccent[100]
            : const Color.fromARGB(255, 220, 94, 245),
        borderRadius: BorderRadius.circular(30),
      ),
      alignment: Alignment.center,
      child: Text(
        ((data['question_index'] as int) + 1).toString(),
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
