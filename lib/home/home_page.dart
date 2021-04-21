import 'home_controller.dart';
import 'home_state.dart';
import 'widgets/appbar/appbar_widget.dart';
import 'widgets/level_button/level_button_widget.dart';
import 'widgets/quiz_card/quiz_card_widget.dart';
import '../shared/widgets/loading_windget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController homeController = HomeController();

  @override
  void initState() {
    super.initState();
    homeController.getUser();
    homeController.getQuizzes();
    homeController.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (homeController.state == HomeState.loading) return LoadingWidget();
    return Scaffold(
      appBar: AppbarWidget(user: homeController.user),
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
              children: homeController.quizzes
                      ?.map((quiz) => QuizCardWidget(
                            title: quiz.title,
                            image: quiz.image,
                            completed: quiz.questionAnswered,
                            total: quiz.questions.length,
                          ))
                      .toList() ??
                  [],
            ),
          ),
        ],
      ),
    );
  }
}
