import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'Login_Client_Post.dart';

Future<List<Comment>> loggin(json) async {
  var x;
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  final url = Uri.parse(
    'https://6480-186-168-196-174.ngrok.io/login',
  );
  final respuesta = await http.post(url, body: json);
  print(respuesta.statusCode);

  if (respuesta.statusCode == 200) {
    sharedPreferences.setString("token", respuesta.body);
    return x;
  } else {
    return null;
  }
}
