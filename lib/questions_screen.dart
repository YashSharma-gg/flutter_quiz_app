import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './answer_button.dart';
import './data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({required this.onChooseAnswer, super.key});
  final void Function(String answer) onChooseAnswer;
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onChooseAnswer(selectedAnswer);
    setState(() {
      //currentQuestionIndex = currentQuestionIndex + 1;
      //currentQuestionIndex += 1;
      currentQuestionIndex++; // Increments value by 1
      currentQuestionIndex == questions.length
          ? currentQuestionIndex = 0
          : null;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Container(
      margin: const EdgeInsets.all(40),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 201, 153, 251),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(
                answer: answer,
                onTap: () {
                  answerQuestion(answer);
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
