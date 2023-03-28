import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result(this.resultScore, this.resetQuiz, {super.key});

  final int resultScore;
  final VoidCallback resetQuiz;

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likable!';
    } else if (resultScore <= 16) {
      resultText = 'You are...... strange?!';
    } else {
      resultText = 'You are sooooo bad!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: resetQuiz,
            child: const Text('Restart Quiz!'),
          ),
        ],
      ),
    );
  }
}
