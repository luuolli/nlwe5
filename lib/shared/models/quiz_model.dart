import 'question_model.dart';
import '../../core/core.dart';

enum Level { facil, medio, dificil, perito }

extension LevelStringExt on String {
  Level get levelParse => {
        'facil': Level.facil,
        'medio': Level.medio,
        'dificil': Level.dificil,
        'perito': Level.perito,
      }[this]!;
}

extension LevelExt on Level {
  String get parse => {
        Level.facil: 'facil',
        Level.medio: 'medio',
        Level.dificil: 'dificil',
        Level.perito: 'perito',
      }[this]!;
}

class QuizModel {
  late final String title;
  late final List<QuestionModel> questions;
  late final int questionAnswered;
  late final String image;
  late final Level level;

  QuizModel({
    required this.title,
    required this.questions,
    this.questionAnswered: 0,
    required this.image,
    required this.level,
  }) : assert(questionAnswered <= questions.length);

  QuizModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = AppImages.quizCardImageFromName(json['image']);
    questionAnswered = json['question_answered'];
    level = json['level'].toString().levelParse;
    if (json['questions'] != null) {
      questions = [];
      json['questions'].forEach((v) {
        questions.add(QuestionModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['image'] = this.image;
    data['question_answered'] = this.questionAnswered;
    data['level'] = this.level.parse;
    data['questions'] =
        this.questions.map((question) => question.toJson()).toList();
    return data;
  }
}
