import 'dart:ui';

import 'package:beauty_touch/Models/Login_Clien_Json_Post.dart';
import 'package:beauty_touch/Models/Login_Client_Post.dart';
import 'package:beauty_touch/pag_home/home.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'linkToCreateAccount.dart';

class Login extends StatelessWidget {
  SharedPreferences sharedPreferences;
  final comment = Comment();
  final formKey = new GlobalKey<FormState>();
  final user = TextEditingController();
  final passwor = TextEditingController();
  List<Comment> comentarios;

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
            Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 80,
                    ),
                    TextFormField(
                      controller: user,
                      validator: (valor) =>
                          valor.length < 1 ? 'Id invalido' : null,
                      keyboardType: TextInputType.number,
                      onChanged: (valor) => comment.id_Cli = valor,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.recent_actors,
                            color: Colors.blue,
                          ),
                          hintText: 'No. de documento'),
                    ),
                    TextFormField(
                      controller: passwor,
                      validator: (valor) =>
                          valor.length < 1 ? 'Contrase??a no valida' : null,
                      onChanged: (valor) => comment.password = valor,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            color: Colors.blue,
                          ),
                          hintText: 'Contrase??a'),
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
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
                            final form = formKey.currentState;
                            if (form.validate()) {
                              user.text = "";
                              passwor.text = "";
                              form.save();
                              comentarios = await loggin(comment.toJson());
                              if (sharedPreferences.getString("token") !=
                                  null) {
                                Future.delayed(
                                    const Duration(milliseconds: 100), () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(builder: (context) {
                                    return Home();
                                  }));
                                });
                              }
                              if (sharedPreferences.getString("token") ==
                                  null) {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Center(
                                          child: Text(
                                            'Usuario o contrase??a incorrectos',
                                            style: TextStyle(
                                                fontFamily: 'George',
                                                fontSize: 18,
                                                color: Colors.black),
                                          ),
                                        ),
                                      );
                                    });
                              }
                            } else {
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
                  ],
                )),
          ]),
        ),
      ),
    );
  }
}
