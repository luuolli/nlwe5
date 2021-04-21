import 'widgets/question_indicator/question_indicator_widget.dart';
import 'widgets/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChalengePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: SafeArea(
          minimum: EdgeInsets.only(top: 40),
          top: true,
          child: QuestionIndicatorWidget(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: QuizWidget(
          title: 'O que o Flutter faz em sua totalidade?',
        ),
      ),
    );
  }
}
