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
    this.lastName1_Cli,
    this.lastName2_Cli,
    this.birthday_Cli,
    this.cellphone_Cli,
    this.email_Cli,
    this.Password_Cli,
    this.direction_Cli,
  });

  String id_Cli;
  String name1_cli;
  String name2_Cli;
  String lastName1_Cli;
  String lastName2_Cli;
  String birthday_Cli;
  String cellphone_Cli;
  String email_Cli;
  String Password_Cli;
  String direction_Cli;

  factory CommentPost.fromJson(Map<String, dynamic> json) => CommentPost(
      id_Cli: json["id_Cli"].toString(),
      name1_cli: json["Name1_Cli"],
      name2_Cli: json["Name2_Cli"],
      lastName1_Cli: json["LastName1_Cli"],
      lastName2_Cli: json["LastName2_cli"],
      birthday_Cli: json["Birthday_Cli"],
      cellphone_Cli: json["cellphone_cli"].toString(),
      email_Cli: json["Email_Cli"],
      Password_Cli: json["password_Cli"],
      direction_Cli: json["direction_cli"]);

  Map<String, dynamic> toJson() => {
        "id_Cli": id_Cli,
        "Name1_Cli": name1_cli,
        "Name2_Cli": name2_Cli,
        "LastName1_Cli": lastName1_Cli,
        "LastName2_cli": lastName2_Cli,
        "Birthday_Cli": birthday_Cli,
        "cellphone_cli": cellphone_Cli,
        "Email_Cli": email_Cli,
        "password_Cli": Password_Cli,
        "direction_clie": direction_Cli
      };
}
