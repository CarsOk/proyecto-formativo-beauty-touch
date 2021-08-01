import 'dart:ui';

import 'package:beauty_touch/Models/Login_Clien_Json_Post.dart';
import 'package:beauty_touch/Models/Login_Client_Post.dart';
import 'package:beauty_touch/pag_home/home.dart';
import 'package:flutter/material.dart';

import 'linkToCreateAccount.dart';

class Login extends StatelessWidget {
  final comment = Comment();
  List<Comment> comentarios;

  Widget idInput() {
    return TextFormField(
      onChanged: (valor) => comment.id_Cli = valor,
      decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: Colors.blue,
          ),
          hintText: 'Contraseña'),
      obscureText: true,
    );
  }

  Widget passwordInput() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onChanged: (valor) => comment.password_Cli = valor,
      decoration: InputDecoration(
          icon: Icon(
            Icons.recent_actors,
            color: Colors.blue,
          ),
          hintText: 'No. de documento'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: new BoxDecoration(
            gradient: LinearGradient(
                colors: [
              Colors.white,
              Colors.lightBlue[100],
              Color.fromRGBO(255, 250, 250, 1)
            ],
                stops: [
              0.1,
              1,
              0.8
            ],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter)),
        child: Container(
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(70, 50, 70, 30),
              child: Image.asset(
                'assets/LogoN.png',
                height: 200,
              ),
            ),
            SizedBox(
              height: 80,
            ),
            passwordInput(),
            SizedBox(
              height: 20,
            ),
            idInput(),
            Container(
              padding: const EdgeInsets.fromLTRB(70, 25, 50, 0),
              child: RaisedButton(
                  child: Text(
                    'Iniciar sesion',
                    style: TextStyle(
                      fontFamily: 'coolveltica',
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  ),
                  onPressed: () async {
                    if (comment.id_Cli != null) {
                      comentarios = await loggin(comment.toJson());
                      if (comentarios != null) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      }
                      if (comentarios == null) {
                        showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Center(
                                  child: Text(
                                    'Usuario o contraseña incorrectos',
                                    style: TextStyle(
                                        fontFamily: 'George',
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                ),
                              );
                            });
                      }
                    }
                    if (comment.id_Cli == null) {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Center(
                                child: Text(
                                  'Campos vacios',
                                  style: TextStyle(
                                      fontFamily: 'George',
                                      fontSize: 18,
                                      color: Colors.black),
                                ),
                              ),
                            );
                          });
                    }
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            Acount(),
          ]),
        ),
      ),
    );
  }
}
