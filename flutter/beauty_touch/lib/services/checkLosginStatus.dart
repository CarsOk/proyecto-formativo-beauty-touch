import 'package:beauty_touch/Pages_Login/login.dart';
import 'package:beauty_touch/pag_home/home.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CheckLogin extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<CheckLogin> {
  SharedPreferences sharedPreferences;
  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  checkLogin() async {
    sharedPreferences = await SharedPreferences.getInstance();

    if (sharedPreferences.getString('token') != null) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext context) => Login()),
          (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}
