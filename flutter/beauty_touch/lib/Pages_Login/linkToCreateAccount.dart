import 'package:flutter/material.dart';
import 'CreateAcount.dart';

class Acount extends StatelessWidget {
  final bool loging;
  final Function press;
  const Acount({
    Key key,
    this.loging = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(loging ? '¿No tiene una cuenta?' : 'Ya tengo una ceunta'),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => CreateAcount()));
          },
          child: Text(
            loging ? 'Crear' : 'Iniciar sesion',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
