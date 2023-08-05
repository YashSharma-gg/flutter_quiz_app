import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({required this.data, super.key});

  final Map<String, Object> data;
  @override
  Widget build(context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(data: data),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data['question'] as String,
                style: GoogleFonts.lato(
                    color: Colors.purple[100],
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                data['user_answer'] as String,
                style: GoogleFonts.lato(
                    color: Colors.pink[100],
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                data['correct_answer'] as String,
                style: GoogleFonts.lato(
                    color: Colors.blue[100],
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 12,
              ),
            ],
          ),
        )
      ],
    );
  }
}
