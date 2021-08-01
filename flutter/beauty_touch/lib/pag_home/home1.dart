import 'package:flutter/material.dart';

void main() => runApp(Home1());

class Home1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'inicio 1',
      home: Scaffold(
        appBar: AppBar(
          title: Text('incio 1'),
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
