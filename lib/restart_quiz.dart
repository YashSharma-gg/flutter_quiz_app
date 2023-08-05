import 'package:flutter/material.dart';

class RestartQuiz extends StatelessWidget {
  const RestartQuiz({
    super.key,
    required this.onRestart,
  });

  final void Function() onRestart;
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onRestart,
      icon: const Icon(Icons.refresh_rounded),
      label: const Text('Restart Quiz!'),
      style: TextButton.styleFrom(
        foregroundColor: Colors.purple[100],
      ),
    );
  }
}
