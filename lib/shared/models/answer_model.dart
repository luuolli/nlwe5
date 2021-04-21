class AnswerModel {
  late final String title;
  late final bool isRight;

  AnswerModel({required this.title, this.isRight: false});

  AnswerModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    isRight = json['isRight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['isRight'] = this.isRight;
    return data;
  }
}
