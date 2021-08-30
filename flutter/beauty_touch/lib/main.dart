import 'package:beauty_touch/services/checkLosginStatus.dart';
import 'package:flutter/material.dart';

import 'Pages_Login/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: ('app Beauty Touch'),
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CheckLogin(),
      routes: {
        'login': (context) => Login(),
        'CheckLogin': (context) => CheckLogin(),
      },
    );
  }
}
