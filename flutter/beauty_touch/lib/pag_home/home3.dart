import 'package:flutter/material.dart';

void main() => runApp(Home3());

class Home3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'inicio 3',
      home: Scaffold(
        appBar: AppBar(
          title: Text('inicio 3'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
