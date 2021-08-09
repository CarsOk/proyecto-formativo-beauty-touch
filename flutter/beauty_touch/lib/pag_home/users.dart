import 'package:beauty_touch/Pages_Login/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(Users());

class Users extends StatelessWidget {
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
                Future.delayed(const Duration(milliseconds: 1000), () {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) {
                    return Login();
                  }));
                });
              },
              child: const Text('Cerrar sesión'),
            ),
          )),
    );
  }
}
