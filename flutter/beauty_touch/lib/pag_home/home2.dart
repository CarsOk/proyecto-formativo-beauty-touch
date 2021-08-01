import 'package:flutter/material.dart';

void main() => runApp(Home2());

class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'inicio 2',
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
