import 'package:DevQuiz/home/widgets/appbar/appbar_widget.dart';
import 'package:DevQuiz/home/widgets/level_button/level_button_widget.dart';
import 'package:DevQuiz/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      body: Column(
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              child: Row(
                children: [
                  LevelButtonWidget(label: 'Fácil'),
                  LevelButtonWidget(label: 'Médio'),
                  LevelButtonWidget(label: 'Difícil'),
                  LevelButtonWidget(label: 'Perito'),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.symmetric(horizontal: 20),
              childAspectRatio: 0.8,
              physics: BouncingScrollPhysics(),
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              crossAxisCount: 2,
              children: [
                QuizCardWidget(),
                QuizCardWidget(),
                QuizCardWidget(),
                QuizCardWidget(),
                QuizCardWidget(),
                QuizCardWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
