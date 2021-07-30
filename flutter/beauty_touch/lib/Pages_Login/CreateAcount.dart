import 'package:beauty_touch/Models/CreateAcount_Client_Json_Post.dart';
import 'package:beauty_touch/Models/createAcount_Client_Post.dart';
import 'package:flutter/material.dart';

class CreateAcount extends StatelessWidget {
  final comment = CommentPost();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.blue),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Crear cuenta',
            style: TextStyle(
                fontFamily: 'George', fontSize: 25, color: Colors.black),
          )),
      body: Container(
        padding: EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 0, 25, 1),
          child: ListView(
            children: [
              SizedBox(
                height: 40,
              ),
              TextFormField(
                onChanged: (valor) => comment.name1_cli = valor,
                decoration: InputDecoration(
                    icon: Icon(Icons.account_circle,
                        color: Color.fromRGBO(255, 117, 020, 1)),
                    hintText: 'Nombre completo'),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                onChanged: (valor) => comment.email_Cli = valor,
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.mail,
                      color: Color.fromRGBO(255, 117, 020, 1),
                    ),
                    hintText: 'Correo electronico'),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (valor) => comment.id_Cli = valor,
                decoration: InputDecoration(
                    icon: Icon(Icons.recent_actors,
                        color: Color.fromRGBO(255, 117, 020, 1)),
                    hintText: 'No. de documento'),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                onChanged: (valor) => comment.birthday_Cli = valor,
                decoration: InputDecoration(
                    icon: Icon(Icons.calendar_today,
                        color: Color.fromRGBO(255, 117, 020, 1)),
                    hintText: 'No. de edad'),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: (valor) => comment.Password_Cli = valor,
                decoration: InputDecoration(
                    icon: Icon(Icons.lock,
                        color: Color.fromRGBO(255, 117, 020, 1)),
                    hintText: 'Contraseña'),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(70, 50, 70, 30),
                child: ElevatedButton(
                    onPressed: () async {
                      CommentPost comentario =
                          await registrar(comment.toJson());
                      Navigator.pop(context);
                    },
                    child: Text('guardar')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
