// To parse this JSON data, do
//
//     final comment = commentFromJson(jsonString);

import 'dart:convert';

List<Comment> logginClientFromJson(String str) =>
    List<Comment>.from(json.decode(str).map((x) => Comment.fromJson(x)));

String logginClientPostToJson(Comment data) => json.encode(data.toJson());

class Comment {
  Comment({
    this.password_Cli,
    this.id_Cli,
  });

  String password_Cli;
  String id_Cli;

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
        password_Cli: json["password_Cli"],
        id_Cli: json["id_Cli"].toString(),
      );

  Map<String, dynamic> toJson() => {
        "password_Cli": password_Cli,
        "id_Cli": id_Cli,
      };
}
