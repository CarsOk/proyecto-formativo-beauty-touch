import 'package:beauty_touch/pag_home/home1.dart';
import 'package:beauty_touch/pag_home/home2.dart';
import 'package:beauty_touch/pag_home/users.dart';
import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pagActual = 0;
  List<Widget> _paginas = [Home1(), Home2(), Users()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _paginas[_pagActual],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              _pagActual = index;
            });
          },
          currentIndex: _pagActual,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_sharp), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Image'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_rounded), label: 'Users')
          ],
        ),
      ),
    );
  }
}
