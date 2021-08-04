// To parse this JSON data, do
//
//     final clientPost =  (jsonString);

import 'dart:convert';

CommentPost clientPostFromJson(String str) =>
    CommentPost.fromJson(json.decode(str));

String clientPostToJson(CommentPost data) => json.encode(data.toJson());

class CommentPost {
  CommentPost({
    this.id_Cli,
    this.name1_cli,
    this.name2_Cli,
    this.last1_Cli,
    this.last2_Cli,
    this.birthday_Cli,
    this.cellphone_Cli,
    this.email_Cli,
    this.password_Cli,
    this.direction_Cli,
  });

  String id_Cli;
  String name1_cli;
  String name2_Cli;
  String last1_Cli;
  String last2_Cli;
  String birthday_Cli;
  String cellphone_Cli;
  String email_Cli;
  String password_Cli;
  String direction_Cli;

  factory CommentPost.fromJson(Map<String, dynamic> json) => CommentPost(
      id_Cli: json["id_Cli"].toString(),
      name1_cli: json["name1_Cli"],
      name2_Cli: json["name2_Cli"],
      last1_Cli: json["last_Cli"],
      last2_Cli: json["last_cli"],
      birthday_Cli: json["birthday_Cli"],
      cellphone_Cli: json["cellphone_cli"].toString(),
      email_Cli: json["email_Cli"],
      password_Cli: json["password_Cli"],
      direction_Cli: json["direction_cli"]);

  Map<String, dynamic> toJson() => {
        "id_Cli": id_Cli,
        "name1_Cli": name1_cli,
        "name2_Cli": name2_Cli,
        "last1_Cli": last1_Cli,
        "last2_cli": last2_Cli,
        "birthday_Cli": birthday_Cli,
        "cellphone_cli": cellphone_Cli,
        "email_Cli": email_Cli,
        "password_Cli": password_Cli,
        "direction_clie": direction_Cli
      };
}
