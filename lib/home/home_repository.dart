import 'dart:convert';

import '../shared/models/quiz_model.dart' show QuizModel;
import '../shared/models/quiz_model.dart';
import '../shared/models/user_model.dart';
import 'package:flutter/services.dart';

class HomeRepository {
  Future<UserModel> getUser() async {
    final response = await rootBundle.loadString('database/user.json');
    final user = UserModel.fromJson(jsonDecode(response));
    return user;
  }

  Future<List<QuizModel>> getQuizzes() async {
    final response = await rootBundle.loadString('database/quizzes.json');
    final list = jsonDecode(response) as List;
    final quizzes = list.map((quiz) => QuizModel.fromJson(quiz));
    return quizzes.toList();
  }
}
