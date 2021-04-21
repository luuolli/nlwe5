import 'home_repository.dart';

import '../shared/models/quiz_model.dart';
import '../shared/models/user_model.dart';
import 'package:flutter/cupertino.dart';

import 'home_state.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.none);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  final repository = HomeRepository();

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    user = await repository.getUser();
    state = HomeState.sucesso;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    quizzes = await repository.getQuizzes();
    state = HomeState.sucesso;
  }
}
