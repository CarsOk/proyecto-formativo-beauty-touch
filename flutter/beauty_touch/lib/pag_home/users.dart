import 'package:beauty_touch/Pages_Login/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(Users());

class Users extends StatelessWidget {
  SharedPreferences sharedPreferences;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User',
      home: Scaffold(
          appBar: AppBar(
            title: Text('User'),
          ),
          body: Container(
            padding: EdgeInsets.fromLTRB(135, 550, 0, 0),
            child: ElevatedButton(
              onPressed: () {
                // Future.delayed(const Duration(milliseconds: 1000), () {
                //   Navigator.of(context)
                //       .pushReplacement(MaterialPageRoute(builder: (context) {
                //     return Login();
                //   }));
                // });
                sharedPreferences.clear();
                sharedPreferences.commit();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                        builder: (BuildContext context) => Login()),
                    (Route<dynamic> route) => false);
              },
              child: const Text('Cerrar sesión'),
            ),
          )),
    );
  }
}
