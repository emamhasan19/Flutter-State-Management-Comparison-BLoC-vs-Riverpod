class PostModel extends PostEntity {
  PostModel({
    required super.userId,
    required super.id,
    required super.title,
    required super.body,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) => PostModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );
}

class PostEntity {
  int userId;
  int id;
  String title;
  String body;

  PostEntity({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory PostEntity.fromJson(Map<String, dynamic> json) {
    return PostEntity(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }
}
