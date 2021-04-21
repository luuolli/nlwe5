import 'answer_model.dart';

class QuestionModel {
  late final String title;
  late final List<AnswerModel> answers;

  QuestionModel({required this.title, required this.answers})
      : assert(answers.length == 4);

  QuestionModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['answers'] != null) {
      answers = [];
      json['answers'].forEach((answer) {
        answers.add(AnswerModel.fromJson(answer));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['answers'] = this.answers.map((answer) => answer.toJson()).toList();
    return data;
  }
}
