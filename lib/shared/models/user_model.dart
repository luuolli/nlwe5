// Model gerado usando Json to dart
// https://javiercbk.github.io/json_to_dart/

class UserModel {
  late final String name;
  late final String photoUrl;
  late final int score;

  UserModel({
    required this.name,
    required this.photoUrl,
    this.score: 0,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    score = json['score'];
    photoUrl = json['photo_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['score'] = this.score;
    data['photo_url'] = this.photoUrl;
    return data;
  }
}
