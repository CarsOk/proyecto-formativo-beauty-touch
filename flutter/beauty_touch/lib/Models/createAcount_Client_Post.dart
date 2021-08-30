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
    this.name1_Cli,
    this.name2_Cli,
    this.last1_Cli,
    this.last2_Cli,
    this.birthday_Cli,
    this.cellphone_Cli,
    this.email,
    this.password,
    this.password_confirmation,
    this.direction_Cli,
  });

  String id_Cli;
  String name1_Cli;
  String name2_Cli;
  String last1_Cli;
  String last2_Cli;
  String birthday_Cli;
  String cellphone_Cli;
  String email;
  String password;
  String password_confirmation;
  String direction_Cli;

  factory CommentPost.fromJson(Map<String, dynamic> json) => CommentPost(
      id_Cli: json["id_Cli"].toString(),
      name1_Cli: json["name1_Cli"],
      name2_Cli: json["name2_Cli"],
      last1_Cli: json["last1_Cli"],
      last2_Cli: json["last2_Cli"],
      birthday_Cli: json["birthday_Cli"],
      cellphone_Cli: json["cellphone_Cli"].toString(),
      email: json["email"],
      password: json["password"],
      password_confirmation: json["password_confirmation"],
      direction_Cli: json["direction_Cli"]);

  Map<String, dynamic> toJson() => {
        "id_Cli": id_Cli,
        "name1_Cli": name1_Cli,
        "name2_Cli": name2_Cli,
        "last1_Cli": last1_Cli,
        "last2_Cli": last2_Cli,
        "birthday_Cli": birthday_Cli,
        "cellphone_Cli": cellphone_Cli,
        "email_Cli": email,
        "password_Cli": password,
        "password_confirmation": password_confirmation,
        "direction_Cli": direction_Cli
      };
}
