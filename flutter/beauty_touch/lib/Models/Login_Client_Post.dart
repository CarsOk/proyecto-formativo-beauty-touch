// To parse this JSON data, do
//
//     final comment = commentFromJson(jsonString);

import 'dart:convert';

List<Comment> logginClientFromJson(String str) =>
    List<Comment>.from(json.decode(str).map((x) => Comment.fromJson(x)));

String logginClientPostToJson(Comment data) => json.encode(data.toJson());

class Comment {
  Comment({
    this.password,
    this.id_Cli,
  });

  String password;
  String id_Cli;

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        password: json["password"],
        id_Cli: json["id_Cli"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "password": password,
        "id_Cli": id_Cli,
      };
}
