import 'package:first_app_kpln/question.dart';
import 'package:first_app_kpln/answer.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    var answerWidgetList =
        (questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
      print(answer);
      return Answer(() => answerQuestion(answer['score']), answer['text']);
    }).toList();

    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...answerWidgetList,
      ],
    );
  }
}
